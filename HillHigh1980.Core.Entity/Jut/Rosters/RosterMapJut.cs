using HillHigh1980.Core.Entity.Jut.Locations;
using System.Collections.Generic;
using System.Linq;


namespace HillHigh1980.Core.Entity.Jut.Rosters
{
    public static class RosterMapJut
    {
        public static IEnumerable<RosterJut> Jut(this IEnumerable<Roster> rosters)
        {
            return rosters.Select(s => Jut(s));
        }

        public static RosterJut Jut(this Roster roster)
        {
            if (roster == null)
            {
                return new RosterJut();
            }
            return new RosterJut
            {
                Caption = roster.Caption,
                FirstName = roster.FirstName,
                Image = roster.Image,
                LastName = roster.LastName,
                Link = roster.Link,
                Middle = roster.Middle,
                RosterId = roster.RosterId,
                Locations = roster.Locations.Jut().ToList()
            };
        }
        public static IEnumerable<Roster> JutToRoster(this IEnumerable<RosterJut> rosterJuts)
        {
            return rosterJuts.Select(s => JutToRoster(s));
        }

        public static Roster JutToRoster(this RosterJut rosterJut)
        {
            if (rosterJut == null)
            {
                return new Roster();
            }

            return new Roster
            {
                Caption = rosterJut.Caption,
                FirstName = rosterJut.FirstName,
                Image = rosterJut.Image,
                LastName = rosterJut.LastName,
                Link = rosterJut.Link,
                Middle = rosterJut.Middle,
                RosterId = rosterJut.RosterId,
                Locations = rosterJut.Locations.JutToLocation()
            };
        }
    }
}
