using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data;
using Microsoft.AspNetCore.Mvc;

namespace HillHigh1980.UI.Controllers
{
    public class RosterController : Controller
    {
        public class Filter
        {
            public int index { get; set; }
            public string name { get; set; }
        }

        private readonly HillHigh1980DbContext _context;

        public RosterController(HillHigh1980DbContext context)
        {
            _context = context;
        }
        public IActionResult Index(int id)
        {
            IEnumerable<Location> locations = _context.Locations.Where(r => r.RosterId == id);

            return PartialView("_Locations", locations);
        }

        public IActionResult Search(Filter filter)
        {
            IEnumerable<Roster> rosters;

            if (filter.index == 1)
            {
                rosters = _context.Rosters.Where(r => r.FirstName.Contains(filter.name));
            } else
            {
                rosters = _context.Rosters.Where(r => r.LastName.Contains(filter.name));
            }

            return PartialView("_Rosters", rosters);
        }
    }
}