using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HillHigh1980.Core.Entity.Jut.Locations
{
    public static class LocationMapJut
    {
        public static IEnumerable<LocationJut> Jut(this IEnumerable<Location> locations)
        {
            return locations.Select(s => Jut(s));
        }

        public static LocationJut Jut(this Location location)
        {
            if (location == null)
            {
                return new LocationJut();
            }
            return new LocationJut
            {
                City = location.City,
                LocationId = location.LocationId,
                RosterId = location.RosterId,
                State = location.State,
                Country = location.Country
            };
        }
        public static IEnumerable<Location> JutToLocation(this IEnumerable<LocationJut> rosterJuts)
        {
            return rosterJuts.Select(s => JutToLocation(s));
        }

        public static Location JutToLocation(this LocationJut locationJut)
        {
            if (locationJut == null)
            {
                return new Location();
            }

            return new Location
            {
                City = locationJut.City,
                LocationId = locationJut.LocationId,
                RosterId = locationJut.RosterId,
                State = locationJut.State,
                Country = locationJut.Country

            };
        }
    }
}
