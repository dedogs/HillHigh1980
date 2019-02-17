using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using HillHigh1980.Core.Entity;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity.Jut.Rosters;

namespace HillHigh1980.UI.Pages.Rosters
{
    public class DetailsModel : PageModel
    {
        private readonly IRosterService _service;

        public DetailsModel(IRosterService service)
        {
            _service = service;
        }

        public RosterJut Roster { get; set; }

        public async Task<IActionResult> OnGetAsync(int rosterid)
        {

            Roster = await _service.FindRosterByIdAsync(rosterid);

            if (Roster == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
