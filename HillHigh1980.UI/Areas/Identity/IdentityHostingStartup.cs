using System;
using HillHigh1980.Security.Data;
using HillHigh1980.UI.Areas.Identity.Data;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(HillHigh1980.UI.Areas.Identity.IdentityHostingStartup))]
namespace HillHigh1980.UI.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<HillHigh1980SecurityContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("HillHigh1980SecurityContextConnection")));

                services.AddDefaultIdentity<HillHigh1980SecurityUser>()
                    .AddEntityFrameworkStores<HillHigh1980SecurityContext>();
            });
        }
    }
}