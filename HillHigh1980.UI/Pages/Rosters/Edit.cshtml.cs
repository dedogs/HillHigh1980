using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data;

namespace HillHigh1980.UI.Pages.Rosters
{
    public class EditModel : PageModel
    {
        private readonly HillHigh1980.Infrastructure.Data.HillHigh1980DbContext _context;

        public EditModel(HillHigh1980.Infrastructure.Data.HillHigh1980DbContext context)
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

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(Roster).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RosterExists(Roster.RosterId))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool RosterExists(int id)
        {
            return _context.Rosters.Any(e => e.RosterId == id);
        }
    }
}
