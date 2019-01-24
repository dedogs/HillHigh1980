using HillHigh1980.Core.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace HillHigh1980.Infrastructure.Data.Configuration
{
    public class LocationConfiguration : IEntityTypeConfiguration<Location>
    {
        public void Configure(EntityTypeBuilder<Location> builder)
        {
            builder.HasKey(c => c.LocationId);
            builder.Property(c => c.LocationId).ValueGeneratedOnAdd();
            builder.HasOne(r => r.Roster).WithMany(r => r.Locations).HasForeignKey(r => r.RosterId);

        }
    }
}
