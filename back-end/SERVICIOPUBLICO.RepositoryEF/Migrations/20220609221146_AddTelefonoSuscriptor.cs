using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class AddTelefonoSuscriptor : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Telefono",
                table: "Suscriptores",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Telefono",
                table: "Suscriptores");
        }
    }
}
