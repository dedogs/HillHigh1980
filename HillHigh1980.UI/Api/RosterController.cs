using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace HillHigh1980.UI.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class RosterController : ControllerBase
    {
        private readonly HillHigh1980DbContext _context;

        public RosterController(HillHigh1980DbContext context)
        {
            _context = context;
        }
        // GET: api/Default
        [HttpGet]
        public IEnumerable<Roster> Get()
        {
            return _context.Rosters;
        }

        // GET: api/Default/5
        [HttpGet("{name}", Name = "Get")]
        public Roster Get(string name)
        {
            return _context.Rosters.FirstOrDefault(r => r.FirstName == name);
        }

        // POST: api/Default
        [HttpPost]
        public ActionResult Post([FromBody] Roster roster)
        {
            _context.Rosters.Add(roster);
            _context.SaveChanges();

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
