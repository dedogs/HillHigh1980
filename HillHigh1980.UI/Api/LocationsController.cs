using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity.Jut.Locations;
using Microsoft.AspNetCore.Authorization;

namespace HillHigh1980.UI.Api
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class LocationsController : ControllerBase
    {
        private readonly IRosterService _service;
        private bool ValidName(string name)
        {
            bool result = !String.IsNullOrEmpty(name);
            result = result && name.Length > 2;
            return result;
        }

        public LocationsController(IRosterService service)
        {
            _service = service;
        }


        // GET: api/Locations/5
        [HttpGet("{rosterId}")]
        public async Task<IActionResult> GetLocation([FromRoute] int rosterId)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var location = await _service.GetRosterLocations(rosterId);

            if (location == null)
            {
                return NotFound();
            }

            return Ok(location);
        }

        // PUT: api/Locations/5
        [HttpPut("{locationId}")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> PutLocation([FromRoute] int locationId, [FromBody] LocationJut location)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (locationId != location.LocationId)
            {
                return BadRequest();
            }

            try
            {
                location = await _service.UpdateRosterLocation(location);
            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest("Database Error");
            }

            return Ok(location);
        }

        // POST: api/Locations
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> PostLocation([FromBody] LocationJut[] locations)
        {
            if (!ModelState.IsValid)
            {
                return StatusCode(StatusCodes.Status400BadRequest, ModelState);
            }
            else if (locations.Any(r => !(ValidName(r.City) || ValidName(r.State))))
            {
                return StatusCode(StatusCodes.Status400BadRequest, "Missing city and/or state");
            }

            try
            {
                await _service.CreateRosterLocation(locations.ToList());
            }
            catch (Exception e)
            {
                return StatusCode(StatusCodes.Status400BadRequest, e);
            }

            return StatusCode(StatusCodes.Status201Created, locations);
        }

        // DELETE: api/Locations/5
        [HttpDelete("{locationId}")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteLocation([FromRoute] int locationId, [FromBody] LocationJut location)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            if (locationId != location.LocationId)
            {
                return BadRequest();
            }

            await _service.RemoveRosterLocation(location);

            return Ok(location);
        }
    }
}