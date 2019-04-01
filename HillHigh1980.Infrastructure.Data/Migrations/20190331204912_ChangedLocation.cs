using Microsoft.EntityFrameworkCore.Migrations;

namespace HillHigh1980.Infrastructure.Data.Migrations
{
    public partial class ChangedLocation : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Latitude",
                table: "Locations",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Longitude",
                table: "Locations",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Latitude",
                table: "Locations");

            migrationBuilder.DropColumn(
                name: "Longitude",
                table: "Locations");
        }
    }
}
