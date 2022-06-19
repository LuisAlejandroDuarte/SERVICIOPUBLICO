using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class Lecturas_Periodo : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "NoLecturas",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmpresaId = table.Column<long>(type: "bigint", nullable: false),
                    Nombre = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NoLecturas", x => x.Id);
                    table.ForeignKey(
                        name: "FK_NoLecturas_Empresas_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresas",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Periodos",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Anno = table.Column<int>(type: "int", nullable: false),
                    Mes = table.Column<int>(type: "int", nullable: false),
                    Estado = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Periodos", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Lecturas",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SuscriptorId = table.Column<long>(type: "bigint", nullable: false),
                    UsuarioId = table.Column<long>(type: "bigint", nullable: false),
                    Lectura1 = table.Column<long>(type: "bigint", nullable: false),
                    Lectura2 = table.Column<long>(type: "bigint", nullable: false),
                    Lectura3 = table.Column<long>(type: "bigint", nullable: false),
                    Lectura4 = table.Column<long>(type: "bigint", nullable: false),
                    Lectura5 = table.Column<long>(type: "bigint", nullable: false),
                    Lectura6 = table.Column<long>(type: "bigint", nullable: false),
                    LecturaActual = table.Column<long>(type: "bigint", nullable: false),
                    LecturaAnterior = table.Column<long>(type: "bigint", nullable: false),
                    LecturaTemporal = table.Column<long>(type: "bigint", nullable: false),
                    FechaLecturaActual = table.Column<DateTime>(type: "datetime2", nullable: true),
                    NoLecturaId = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Lecturas", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Lecturas_NoLecturas_NoLecturaId",
                        column: x => x.NoLecturaId,
                        principalTable: "NoLecturas",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Lecturas_Suscriptores_SuscriptorId",
                        column: x => x.SuscriptorId,
                        principalTable: "Suscriptores",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Lecturas_Usuarios_UsuarioId",
                        column: x => x.UsuarioId,
                        principalTable: "Usuarios",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.NoAction);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Lecturas_NoLecturaId",
                table: "Lecturas",
                column: "NoLecturaId");

            migrationBuilder.CreateIndex(
                name: "IX_Lecturas_SuscriptorId",
                table: "Lecturas",
                column: "SuscriptorId");

            migrationBuilder.CreateIndex(
                name: "IX_Lecturas_UsuarioId",
                table: "Lecturas",
                column: "UsuarioId");

            migrationBuilder.CreateIndex(
                name: "IX_NoLecturas_EmpresaId",
                table: "NoLecturas",
                column: "EmpresaId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Lecturas");

            migrationBuilder.DropTable(
                name: "Periodos");

            migrationBuilder.DropTable(
                name: "NoLecturas");
        }
    }
}
