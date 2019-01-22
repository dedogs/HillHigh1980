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
    public class DeleteModel : PageModel
    {
        private readonly HillHigh1980.Infrastructure.Data.HillHigh1980DbContext _context;

        public DeleteModel(HillHigh1980.Infrastructure.Data.HillHigh1980DbContext context)
        {
            _context = context;
        }

        [BindProperty]
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

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Roster = await _context.Rosters.FindAsync(id);

            if (Roster != null)
            {
                _context.Rosters.Remove(Roster);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
