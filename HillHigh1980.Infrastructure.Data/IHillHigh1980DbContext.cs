using HillHigh1980.Core.Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace HillHigh1980.Infrastructure.Data
{
    public interface IHillHigh1980DbContext
    {
        DbSet<Roster> Rosters { get; set; }
        DbSet<Location> Locations { get; set; }
        int SaveChanges();
        Task<int> SaveChangesAsync(CancellationToken cancellationToken = default(CancellationToken));
    }
}
