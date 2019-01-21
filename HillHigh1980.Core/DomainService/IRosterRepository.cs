using HillHigh1980.Core.Entity;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace HillHigh1980.Core.DomainService
{
    public interface IRosterRepository
    {
        Task<IEnumerable<Roster>> ReadAll(IFilterData filter = null);
        Task<Roster> FindById(int rosterId);

    }
}
