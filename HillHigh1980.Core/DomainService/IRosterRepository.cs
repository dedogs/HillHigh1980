using System;
using HillHigh1980.Core.Entity;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace HillHigh1980.Core.DomainService
{
    public interface IRosterRepository
    {
        Task<IEnumerable<Roster>> ReadAll(IFilterData filter = null);
        Task<Roster> FindById(int rosterId);
        Task<IEnumerable<Roster>> FindRostersByName(Filter filter);
        Task<int> CreateLocation(IEnumerable<Location> locations);
        Task<IEnumerable<Location>> GetLocations();
        Task<Location> GetLocation(int rosterId);
        Task<Location> UpdateLocation(Location location);
        Task DeleteLocation(Location location);
    }
}
