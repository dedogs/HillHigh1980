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

        public async Task<int> Update(Roster roster)
        {
            _context.Attach(roster).State = EntityState.Modified;
            foreach (var location in roster.Locations)
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
           return _context.Rosters;
        }

        public async Task<IEnumerable<Roster>> FindRostersByLastName(string name)
        {
            IEnumerable<Roster> rosters = _context.Rosters;
            return rosters.Where(r => r.LastName.ToLower().Contains(name.ToLower()));
        }
    }
}
