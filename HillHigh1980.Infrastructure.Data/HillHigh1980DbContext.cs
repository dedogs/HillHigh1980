using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data.Configuration;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Infrastructure.Data
{
    public class HillHigh1980DbContext : DbContext, IHillHigh1980DbContext
    {
        public HillHigh1980DbContext()
        {

        }
        public HillHigh1980DbContext(DbContextOptions<HillHigh1980DbContext> options):
            base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfiguration(new RosterConfiguration());

        }

        public DbSet<Roster> Rosters { get; set; }
        public DbSet<Location> Locations { get; set; }
    }
}
