using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class AddRangosToTarifas : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "RangoDOS",
                table: "Tarifas",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "RangoTRES",
                table: "Tarifas",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "RangoUNO",
                table: "Tarifas",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "RangoDOS",
                table: "Tarifas");

            migrationBuilder.DropColumn(
                name: "RangoTRES",
                table: "Tarifas");

            migrationBuilder.DropColumn(
                name: "RangoUNO",
                table: "Tarifas");
        }
    }
}
