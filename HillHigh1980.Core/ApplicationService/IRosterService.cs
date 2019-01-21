using HillHigh1980.Core.Entity;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace HillHigh1980.Core.ApplicationService
{
    public interface IRosterService
    {
        Task<Roster> FindRosterByIdAsync(int seedId);
        Task<IEnumerable<Roster>> GetAllRostersAsync();
    }
}
