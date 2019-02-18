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

namespace HillHigh1980.UI.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class LocationsController : ControllerBase
    {
        private readonly IRosterService _service;

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
        public async Task<IActionResult> PostLocation([FromBody] LocationJut[] locations)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _service.CreateRosterLocation(locations.ToList());
            }
            catch (Exception e)
            {
                BadRequest(e);
            }
            return Ok(locations);
        }

        // DELETE: api/Locations/5
        [HttpDelete("{locationId}")]
        public async Task<IActionResult> DeleteLocation([FromRoute] int locationId,[FromBody] LocationJut location)
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