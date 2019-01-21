using HillHigh1980.Core.ApplicationService;
using HillHigh1980.Core.DomainService;
using HillHigh1980.Core.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HillHigh1980.Infrastructure.Data
{
    public class RosterRepository : IRosterRepository
    {
        private readonly IHillHigh1980DbContext _context;

        public RosterRepository(IHillHigh1980DbContext context)
        {
            _context = context;
        }

        public async Task<Roster> FindById(int rosterId)
        {
            return _context.Rosters.FirstOrDefault(r => r.RosterId == rosterId);
        }

        public async Task<IEnumerable<Roster>> ReadAll(IFilterData filter = null)
        {
           return _context.Rosters;
            //return new List<Roster>
            //{
            //    new Roster
            //    {
            //        FirstName="Kirk",
            //        LastName="deDoes",
            //        Image = "cm_2_8.jpg",
            //        Caption = "Kirk deDoes"
            //    }
            //};
        }
    }
}
