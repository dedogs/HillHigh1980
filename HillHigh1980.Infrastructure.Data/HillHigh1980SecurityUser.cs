using Microsoft.AspNetCore.Identity;

namespace HillHigh1980.Infrastructure.Data
{
    public class HillHigh1980SecurityUser : IdentityUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}