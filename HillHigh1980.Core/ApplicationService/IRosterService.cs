using HillHigh1980.Core.Entity;
using HillHigh1980.Core.Entity.Jut.Locations;
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
        Task<int> CreateRosterLocation(List<LocationJut> locations);
        Task<List<LocationJut>> GetRosterLocations(int rosterId);
        Task<LocationJut> UpdateRosterLocation(LocationJut location);
        Task RemoveRosterLocation(LocationJut location);


    }
}
