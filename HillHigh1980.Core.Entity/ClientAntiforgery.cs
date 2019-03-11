using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Core.Entity
{
    public class ClientAntiforgery
    {
        public string RequestToken { get; set; }
        public string HeaderName { get; set; }
    }
}
