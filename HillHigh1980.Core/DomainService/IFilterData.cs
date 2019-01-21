using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Core.DomainService
{
    public interface IFilterData
    {
        int CurrentPage { get; set; }
        int ItemsPerPage { get; set; }
    }
}
