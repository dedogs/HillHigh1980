using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Core.Entity
{
    public class Roster
    {
        public Roster()
        {
            this.Locations = new List<Location>();
        }
        public int RosterId { get; set; }
        public string FirstName { get; set; }
        public string Middle { get; set; }
        public string LastName { get; set; }
        public bool Found { get; set; }
        public string Image { get; set; }
        public string Caption { get; set; }
        public string Link { get; set; }
        public IEnumerable<Location> Locations { get; set; }
    }
}
