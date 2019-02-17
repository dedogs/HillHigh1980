using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HillHigh1980.Core.DomainService;
using HillHigh1980.Core.Entity;
using HillHigh1980.Core.Entity.Jut.Rosters;

namespace HillHigh1980.Core.ApplicationService.Service
{
    public class RosterService : IRosterService
    {
        private readonly IRosterRepository _repository;

        public RosterService(IRosterRepository repository)
        {
            _repository = repository;
        }
        public async Task<RosterJut> FindRosterByIdAsync(int rosterId)
        {
            Roster roster = await _repository.FindById(rosterId);
            return roster.Jut();
        }

        public async Task<List<RosterJut>> GetAllRostersAsync()
        {
            IEnumerable<Roster> rosters = await _repository.ReadAll();

            return rosters.Jut().ToList();
        }

        public async Task<List<RosterJut>> FindRostersByName(string name)
        {
            IEnumerable<Roster> rosters = await _repository.FindRostersByLastName(name);
            return rosters.Jut().ToList();
        }

        public async Task<int> CreateRosterLocation(Location[] locations)
        {
            return await _repository.CreateLocation(locations);
        }

        public async Task<List<Location>> GetRosterLocations()
        {
            return (await _repository.GetLocations()).ToList();
        }

        public async Task<Location> GetRosterLocation(int rosterId)
        {
            return await _repository.GetLocation(rosterId);
        }

        public async Task<Location> UpdateRosterLocation(Location location)
        {
            return await _repository.UpdateLocation(location);
        }

        public async Task RemoveRosterLocation(Location location)
        {
            await _repository.DeleteLocation(location);
        }
    }
}
