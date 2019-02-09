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
    }
}