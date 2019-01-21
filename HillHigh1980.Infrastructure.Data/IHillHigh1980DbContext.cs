using HillHigh1980.Core.Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Infrastructure.Data
{
    public interface IHillHigh1980DbContext
    {
        DbSet<Roster> Rosters { get; set; }
    }
}
