using HillHigh1980.Core.Entity;
using HillHigh1980.Core.Entity.Jut.Rosters;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HillHigh1980.Core.ApplicationService
{
    public interface IRosterService
    {
        Task<RosterJut> FindRosterByIdAsync(int seedId);
        Task<List<RosterJut>> FindRostersByName(Filter filter);
        Task<List<RosterJut>> GetAllRostersAsync();
        Task<int> CreateRosterLocation(Location[] locations);
        Task<List<Location>> GetRosterLocations();
        Task<Location> GetRosterLocation(int rosterId);
        Task<Location> UpdateRosterLocation(Location location);
        Task RemoveRosterLocation(Location location);


    }
}
