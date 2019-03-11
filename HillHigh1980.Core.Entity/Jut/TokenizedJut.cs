using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Core.Entity.Jut
{
    public class TokenizedJut<T>
    {
        public ClientAntiforgery Token { get; set; }
        public T Data { get; set; }
    }
}
