namespace HillHigh1980.Core.Entity
{
    public class Filter
    {
        public enum Name { First, Last };
        public Name SortBy { get; set; }
        public Name SearchBy { get; set; }
        public string Value { get; set; }
    }
}