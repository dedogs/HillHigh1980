using System.Collections.Generic;
using System.Linq;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity.Jut.RosterJut;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HillHigh1980.UI.Pages
{
    public class IndexModel : PageModel
    {
        public List<RosterJut> Roster = new List<RosterJut>();

        public IRosterService _service { get; }

        public IndexModel(IRosterService service)
        {
            _service = service;
        }

        public async void OnGet()
        {
           Roster = (await _service.GetAllRostersAsync()).ToList();

        }
    }
}
