using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HillHigh1980.UI.Areas.Identity.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace HillHigh1980.Security.Data
{
    public class HillHigh1980SecurityContext : IdentityDbContext<HillHigh1980SecurityUser>
    {
        public HillHigh1980SecurityContext(DbContextOptions<HillHigh1980SecurityContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }
    }
}
