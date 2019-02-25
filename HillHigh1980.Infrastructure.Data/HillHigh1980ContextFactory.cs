using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Infrastructure.Data
{
    public class HillHigh1980ContextFactory : IDesignTimeDbContextFactory<HillHigh1980DbContext>
    {
        public HillHigh1980DbContext CreateDbContext(string[] args)
        {
            var optionsBuilder = new DbContextOptionsBuilder<HillHigh1980DbContext>();
            optionsBuilder.UseSqlServer("Data Source=deDogs-PC\\DEDOGSSQL;Initial Catalog=HillHigh1980;User ID=sa;Password=moclay9330;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            return new HillHigh1980DbContext(optionsBuilder.Options);
        }
    }
}
