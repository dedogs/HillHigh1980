namespace HillHigh1980.Core.Entity
{
    public class Location
    {
        public int LocationId { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public int RosterId { get; set; }
        public Roster Roster { get; set; }
    }
}