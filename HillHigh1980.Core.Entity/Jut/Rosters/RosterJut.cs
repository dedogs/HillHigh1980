
using HillHigh1980.Core.Entity.Jut.Locations;
using System.Collections.Generic;

namespace HillHigh1980.Core.Entity.Jut.Rosters
{
    public class RosterJut
    {
        public int RosterId { get; set; }
        public string FirstName { get; set; }
        public string Middle { get; set; }
        public string LastName { get; set; }
        public bool Found { get; set; }
        public string Image { get; set; }
        public string Caption { get; set; }
        public string Link { get; set; }
        public List<LocationJut> Locations { get; set; }
    }
}
