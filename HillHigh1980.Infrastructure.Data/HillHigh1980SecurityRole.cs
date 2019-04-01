using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Infrastructure.Data
{
    public class HillHigh1980SecurityRole: IdentityRole
    {
        public HillHigh1980SecurityRole() :
            base()
        {

        }
        public HillHigh1980SecurityRole(string roleName):
            base(roleName)
        {

        }
    }
}
