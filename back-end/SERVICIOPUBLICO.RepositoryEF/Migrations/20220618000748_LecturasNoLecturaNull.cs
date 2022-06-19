using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class LecturasNoLecturaNull : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Lecturas_NoLecturas_NoLecturaId",
                table: "Lecturas");

            migrationBuilder.AlterColumn<long>(
                name: "NoLecturaId",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AddForeignKey(
                name: "FK_Lecturas_NoLecturas_NoLecturaId",
                table: "Lecturas",
                column: "NoLecturaId",
                principalTable: "NoLecturas",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Lecturas_NoLecturas_NoLecturaId",
                table: "Lecturas");

            migrationBuilder.AlterColumn<long>(
                name: "NoLecturaId",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Lecturas_NoLecturas_NoLecturaId",
                table: "Lecturas",
                column: "NoLecturaId",
                principalTable: "NoLecturas",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
