using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class AgregaEmpresaUso : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Suscriptores_Empresas_EmpresaId",
                table: "Suscriptores");

            migrationBuilder.DropIndex(
                name: "IX_Suscriptores_EmpresaId",
                table: "Suscriptores");

            migrationBuilder.DropColumn(
                name: "EmpresaId",
                table: "Suscriptores");

            migrationBuilder.DropColumn(
                name: "IdEmprsa",
                table: "Suscriptores");

            migrationBuilder.AddColumn<long>(
                name: "EmpresaId",
                table: "Usos",
                type: "bigint",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Usos_EmpresaId",
                table: "Usos",
                column: "EmpresaId");

            migrationBuilder.AddForeignKey(
                name: "FK_Usos_Empresas_EmpresaId",
                table: "Usos",
                column: "EmpresaId",
                principalTable: "Empresas",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Usos_Empresas_EmpresaId",
                table: "Usos");

            migrationBuilder.DropIndex(
                name: "IX_Usos_EmpresaId",
                table: "Usos");

            migrationBuilder.DropColumn(
                name: "EmpresaId",
                table: "Usos");

            migrationBuilder.AddColumn<long>(
                name: "EmpresaId",
                table: "Suscriptores",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "IdEmprsa",
                table: "Suscriptores",
                type: "bigint",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Suscriptores_EmpresaId",
                table: "Suscriptores",
                column: "EmpresaId");

            migrationBuilder.AddForeignKey(
                name: "FK_Suscriptores_Empresas_EmpresaId",
                table: "Suscriptores",
                column: "EmpresaId",
                principalTable: "Empresas",
                principalColumn: "Id");
        }
    }
}
