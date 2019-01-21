using System;
using System.Collections.Generic;
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

        public async Task<IEnumerable<Roster>> GetAllRostersAsync()
        {
            return await _repository.ReadAll();
        }
    }
}
