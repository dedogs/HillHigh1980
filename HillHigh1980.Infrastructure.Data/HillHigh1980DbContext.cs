using HillHigh1980.Core.Entity;
using HillHigh1980.Infrastructure.Data.Configuration;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Infrastructure.Data
{
    public class HillHigh1980DbContext : DbContext
    {
        public HillHigh1980DbContext()
        {

        }
        public HillHigh1980DbContext(DbContextOptions<HillHigh1980DbContext> options):
            base(options)
        {
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);

            optionsBuilder.UseSqlServer("Data Source=deDogs-PC\\DEDOGSSQL;Initial Catalog=HillHigh1980;User ID=sa;Password=moclay9330;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
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
