using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HillHigh1980.Core.DomainService;
using HillHigh1980.Core.Entity;

namespace HillHigh1980.Core.ApplicationService.Service
{
    public class RosterService : IRosterService
    {
        private readonly IRosterRepository _repository;

        public RosterService(IRosterRepository repository)
        {
            _repository = repository;
        }
        public async Task<Roster> FindRosterByIdAsync(int rosterId)
        {
            return await _repository.FindById(rosterId);
        }

        public async Task<List<Roster>> GetAllRostersAsync()
        {
            IEnumerable<Roster> rosters = await _repository.ReadAll();

            return rosters.ToList();
        }

        public async Task<List<Roster>> FindRostersByLastName(string name)
        {
            return (await _repository.FindRostersByLastName(name)).ToList();
        }

        public async Task<int> UpdateRosterAsync(Roster roster)
        {
            return await _repository.Update(roster);
        }
    }
}
