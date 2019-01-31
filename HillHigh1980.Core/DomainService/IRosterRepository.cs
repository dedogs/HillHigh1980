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
        Task<IEnumerable<Roster>> FindRostersByLastName(string name);
        Task<int> Update(Roster roster);
    }
}
