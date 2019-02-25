using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data.Configuration;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace HillHigh1980.Infrastructure.Data
{
    public class HillHigh1980DbContext : IdentityDbContext<HillHigh1980SecurityUser>
    {
        public HillHigh1980DbContext(DbContextOptions<HillHigh1980DbContext> options)
    : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            base.OnModelCreating(builder);
            builder.ApplyConfiguration(new RosterConfiguration());
        }

        public DbSet<Roster> Rosters { get; set; }
        public DbSet<Location> Locations { get; set; }
    }
}
