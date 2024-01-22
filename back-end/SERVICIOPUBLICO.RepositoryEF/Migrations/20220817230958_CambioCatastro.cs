using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class CambioCatastro : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Diametro",
                table: "Catastros",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(double),
                oldType: "float");

            migrationBuilder.AddColumn<long>(
                name: "UsuarioId",
                table: "Catastros",
                type: "bigint",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Catastros_UsuarioId",
                table: "Catastros",
                column: "UsuarioId");

            migrationBuilder.AddForeignKey(
                name: "FK_Catastros_Usuarios_UsuarioId",
                table: "Catastros",
                column: "UsuarioId",
                principalTable: "Usuarios",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Catastros_Usuarios_UsuarioId",
                table: "Catastros");

            migrationBuilder.DropIndex(
                name: "IX_Catastros_UsuarioId",
                table: "Catastros");

            migrationBuilder.DropColumn(
                name: "UsuarioId",
                table: "Catastros");

            migrationBuilder.AlterColumn<double>(
                name: "Diametro",
                table: "Catastros",
                type: "float",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");
        }
    }
}
