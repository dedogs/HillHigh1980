using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HillHigh1980.Core.DomainService;
using HillHigh1980.Core.Entity;
using HillHigh1980.Core.Entity.Jut.Locations;
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

        public async Task<List<RosterJut>> FindRostersByName(Filter filter)
        {
            IEnumerable<Roster> rosters = await _repository.FindRostersByName(filter);
            return rosters.Jut().ToList();
        }

        public async Task<int> CreateRosterLocation(List<LocationJut> locations)
        {
            return await _repository.CreateLocation(locations.JutToLocation());
        }

        public async Task<List<LocationJut>> GetRosterLocations(int rosterId)
        {
            return (await _repository.GetLocations()).Jut().ToList();
        }

        public async Task<LocationJut> UpdateRosterLocation(LocationJut location)
        {
            return (await _repository.UpdateLocation(location.JutToLocation())).Jut();
        }

        public async Task RemoveRosterLocation(LocationJut location)
        {
            await _repository.DeleteLocation(location.JutToLocation());
        }
    }
}
