using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.DomainService;
using HillHigh1980.Core.Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HillHigh1980.Infrastructure.Data
{
    public class RosterRepository : IRosterRepository
    {
        private readonly HillHigh1980DbContext _context;

        public RosterRepository(HillHigh1980DbContext context)
        {
            _context = context;
        }

        public async Task<int> CreateLocation(Location[] locations)
        {
            foreach (var location in locations)
            {
                _context.Attach(location).State = EntityState.Added;
            }

            return await _context.SaveChangesAsync();
        }

        public async Task<Roster> FindById(int rosterId)
        {
            return _context.Rosters.Include(r => r.Locations).FirstOrDefault(r => r.RosterId == rosterId);
        }

        public async Task<IEnumerable<Roster>> ReadAll(IFilterData filter = null)
        {
            return _context.Rosters.Include(r => r.Locations);
        }

        public async Task<IEnumerable<Roster>> FindRostersByName(Filter filter)
        {
            IEnumerable<Roster> rosters = _context.Rosters;
            if (filter.SearchBy == Filter.Name.First)
            {
                rosters = rosters.Where(r => r.FirstName.ToLower().Contains(filter.Value.ToLower()));
            }
            else if (filter.SearchBy == Filter.Name.Last)
            {
                rosters =  rosters.Where(r => r.LastName.ToLower().Contains(filter.Value.ToLower()));
            }

            return rosters;
        }

        public async Task<IEnumerable<Location>> GetLocations()
        {
            return _context.Locations;
        }

        public async Task<Location> GetLocation(int rosterId)
        {
            return _context.Locations.FirstOrDefault(r => r.RosterId == rosterId);
        }

        public async Task<Location> UpdateLocation(Location location)
        {
            Location oldLocation = _context.Locations.FirstOrDefault(o => o.LocationId == location.LocationId);

            oldLocation.City = location.City;
            oldLocation.State = location.State;

            _context.SaveChanges();
            return oldLocation;
        }

        public async Task DeleteLocation(Location location)
        {
            _context.Locations.Remove(location);
            _context.SaveChanges();
        }
    }
}
