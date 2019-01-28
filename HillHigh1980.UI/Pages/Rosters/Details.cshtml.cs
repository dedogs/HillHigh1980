using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using HillHigh1980.Core.Entity;
using HillHigh1980.Core.ApplicationService;

namespace HillHigh1980.UI.Pages.Rosters
{
    public class DetailsModel : PageModel
    {
        private readonly IRosterService _service;

        public DetailsModel(IRosterService service)
        {
            _service = service;
        }

        public Roster Roster { get; set; }

        public async Task<IActionResult> OnGetAsync(int id)
        {

            Roster = await _service.FindRosterByIdAsync(id);

            if (Roster == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
