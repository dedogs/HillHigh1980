using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data;

namespace HillHigh1980.UI.Pages.Rosters
{
    public class DetailsModel : PageModel
    {
        private readonly HillHigh1980.Infrastructure.Data.HillHigh1980DbContext _context;

        public DetailsModel(HillHigh1980.Infrastructure.Data.HillHigh1980DbContext context)
        {
            _context = context;
        }

        public Roster Roster { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Roster = await _context.Rosters.FirstOrDefaultAsync(m => m.RosterId == id);

            if (Roster == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
