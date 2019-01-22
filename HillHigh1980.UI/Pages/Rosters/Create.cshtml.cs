using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data;

namespace HillHigh1980.UI.Pages.Rosters
{
    public class CreateModel : PageModel
    {
        private readonly HillHigh1980.Infrastructure.Data.HillHigh1980DbContext _context;

        public CreateModel(HillHigh1980.Infrastructure.Data.HillHigh1980DbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Roster Roster { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Rosters.Add(Roster);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}