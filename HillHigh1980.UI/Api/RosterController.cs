using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity;
using HillHigh1980.Core.Entity.Jut.Rosters;
using HillHigh1980.Infrastructure.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace HillHigh1980.UI.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class RosterController : ControllerBase
    {
        private readonly IRosterService _service;

        public RosterController(IRosterService service)
        {
            _service = service;
        }
        // GET: api/Default
        [HttpGet]
        public async Task<List<RosterJut>> Get()
        {
            return await _service.GetAllRostersAsync();
        }

        // GET: api/Default/5
        [HttpGet("{name}", Name = "Get")]
        public async Task<List<RosterJut>> Get(Filter filter)
        {
            List<RosterJut> rosters = await _service.FindRostersByName(filter);
            return rosters;
        }

        // POST: api/Default
        [HttpPost]
        public ActionResult Post([FromBody] Roster roster)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                //_service.CreateRosterLocation(roster.Locations);
            }
            catch (Exception e)
            {
                BadRequest(e);
            }
            return Ok(roster);
        }

        // PUT: api/Default/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
