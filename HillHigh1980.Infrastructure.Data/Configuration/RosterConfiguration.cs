using HillHigh1980.Core.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace HillHigh1980.Infrastructure.Data.Configuration
{
    class RosterConfiguration : IEntityTypeConfiguration<Roster>
    {
        public void Configure(EntityTypeBuilder<Roster> builder)
        {
            builder.HasKey(r => r.RosterId);
        }
    }
}