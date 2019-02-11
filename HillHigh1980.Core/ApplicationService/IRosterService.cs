using HillHigh1980.Core.Entity;
using HillHigh1980.Core.Entity.Jut.RosterJut;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace HillHigh1980.Core.ApplicationService
{
    public interface IRosterService
    {
        Task<Roster> FindRosterByIdAsync(int seedId);
        Task<List<Roster>> FindRostersByLastName(string name);
        Task<List<RosterJut>> GetAllRostersAsync();
        Task<int> CreateRosterLocation(Location[] locations);
        Task<List<Location>> GetRosterLocations();
        Task<Location> GetRosterLocation(int rosterId);
        Task<Location> UpdateRosterLocation(Location location);
        Task RemoveRosterLocation(Location location);


    }
}
