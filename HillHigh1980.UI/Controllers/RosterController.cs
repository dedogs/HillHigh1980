using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity;
using HillHigh1980.Core.Entity.Jut.Rosters;
using HillHigh1980.Infrastructure.Data;
using Microsoft.AspNetCore.Mvc;

namespace HillHigh1980.UI.Controllers
{
    public class RosterController : Controller
    {
        private readonly IRosterService _service;
        private readonly HillHigh1980DbContext _context;

        public RosterController(IRosterService service, HillHigh1980DbContext context)
        {
            _service = service;
            _context = context;
        }
        public IActionResult Index(int id)
        {
            IEnumerable<Location> locations = _context.Locations.Where(r => r.RosterId == id);

            return PartialView("_Locations", locations);
        }

        public async Task<IActionResult> Search(Filter filter)
        {
            List<RosterJut> rosters = await _service.FindRostersByName(filter);

            return PartialView("~/Views/Roster/_Rosters.cshtml", rosters);
        }
    }
}