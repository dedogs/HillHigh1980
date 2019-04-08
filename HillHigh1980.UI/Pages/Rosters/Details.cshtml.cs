using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using HillHigh1980.Core.Entity;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity.Jut.Rosters;
using Microsoft.AspNetCore.Authorization;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace HillHigh1980.UI.Pages.Rosters
{
    [Authorize]
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
            //IEnumerable<RosterJut> rosters = await _service.GetAllRostersAsync();

            //string path = @"Z:\Kirk\Visual Studio 2012\Projects\com.hillHigh1980\HillHigh1980\HillHigh1980.UI\wwwroot\images\roster\";
            //var di = new DirectoryInfo(path);

            //List<FileInfo> fi = new List<FileInfo>(di.GetFiles());
            
            //List<RosterJut> result = rosters.Where(r => fi.Any(f => f.Name == r.Image)).ToList();

            //result.ForEach(r =>
            //{
            //    var s = $"{path}{r.Image}";
            //    var s0 = $"{r.FirstName}-{r.LastName}";
            //    var s1 =$"{path}{s0}.jpg";

            //    if (System.IO.File.Exists(s))
            //    {
            //        System.IO.File.Move(s, s1);
            //    }
            //});
            Roster = await _service.FindRosterByIdAsync(rosterid);

            if (Roster == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
