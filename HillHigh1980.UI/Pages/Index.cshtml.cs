using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.Entity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HillHigh1980.UI.Pages
{
    public class IndexModel : PageModel
    {
        public List<Roster> Roster = new List<Roster>();
        private readonly IHostingEnvironment _env;

        public IRosterService _service { get; }

        public IndexModel(IHostingEnvironment env, IRosterService service)
        {
            _env = env;
            _service = service;
        }

        public async void OnGet()
        {
           Roster = (await _service.GetAllRostersAsync()).ToList();

            //DirectoryInfo di = new DirectoryInfo(Path.Combine(_env.WebRootPath, @"images\roster"));
            //RosterImages = di.GetFiles().OrderBy(f => f.Name).Select(f => f.Name).ToList();
        }
    }
}
