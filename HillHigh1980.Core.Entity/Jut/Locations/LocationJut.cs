using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Core.Entity.Jut.Locations
{
    public class LocationJut
    {
        public int LocationId { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string Latitude { get; set; }
        public string Longitude { get; set; }

        public int RosterId { get; set; }
    }
}
