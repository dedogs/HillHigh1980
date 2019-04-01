using System.Collections.Generic;
using System.Linq;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity.Jut.Rosters;
using HillHigh1980.Infrastructure.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HillHigh1980.UI.Pages
{
    public class IndexModel : PageModel
    {
        private UserManager<HillHigh1980SecurityUser> _userManager;

        public IndexModel(UserManager<HillHigh1980SecurityUser> userManager)
        {
            _userManager = userManager;
        }

        public int NumberRosters { get; set; }

        public async void OnGet()
        {
            NumberRosters = _userManager.Users.Count();
        }
    }
}
