using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class Iniciar : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Empresas",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nombre = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Direccion = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Empresas", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Usos",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Codigo = table.Column<int>(type: "int", nullable: false),
                    Estrato = table.Column<int>(type: "int", nullable: false),
                    Descripcion = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usos", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Usuarios",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    User = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Nombre = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Apellido = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Direccion = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Telefono = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EmpresaId = table.Column<long>(type: "bigint", nullable: false),
                    Estado = table.Column<bool>(type: "bit", nullable: false),
                    Rol = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuarios", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Usuarios_Empresas_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresas",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Suscriptores",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UsoId = table.Column<long>(type: "bigint", nullable: false),
                    Codigo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CodigoVerificacion = table.Column<int>(type: "int", nullable: false),
                    Sistema = table.Column<long>(type: "bigint", nullable: false),
                    Nombre = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Direccion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Alcantarillado = table.Column<bool>(type: "bit", nullable: false),
                    Aseo = table.Column<bool>(type: "bit", nullable: false),
                    Atraso = table.Column<int>(type: "int", nullable: false),
                    Sector = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Seccion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ManzanaDane = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ManzanaIgac = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ManzanaEstratifica = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Bloqueo = table.Column<bool>(type: "bit", nullable: true),
                    IdEmprsa = table.Column<long>(type: "bigint", nullable: true),
                    EmpresaId = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Suscriptores", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Suscriptores_Empresas_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresas",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_Suscriptores_Usos_UsoId",
                        column: x => x.UsoId,
                        principalTable: "Usos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Tarifas",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UsoId = table.Column<long>(type: "bigint", nullable: false),
                    ValorCargoFijoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorBasicoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorComplementarioAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorSuntuarioAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    CostoReferenciaCargoFijoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    CostoReferenciaConsumoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    SubsidioCargoFijoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    SubsidioBasicoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    PorcentajeContribucionCargofijoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    PorcentajeContribucionConsumoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    IncrementoCargoFijoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    IncrementoConsumoAcueducto = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorCargoFijoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorBasicoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorComplementarioAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorSuntuarioAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    CostoReferenciaCargoFijoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    CostoReferenciaConsumoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    SubsidioCargoFijoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    SubsidioBasicoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    PorcentajeContribucionCargofijoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    PorcentajeContribucionConsumoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    IncrementoCargoFijoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    IncrementoConsumoAlcantarillado = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorBarridoAseo = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorRecoleccionAseo = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorDisposicionAseo = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    ValorRecaudoAseo = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    SubsidioAseo = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    IncrementoAseo = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    PorcentajeContribucionAseo = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    InteresMora = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    PorcentajeFinanaciacion = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    OtroValor = table.Column<decimal>(type: "decimal(10,3)", nullable: false),
                    OtroSubsidio = table.Column<decimal>(type: "decimal(10,3)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tarifas", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Tarifas_Usos_UsoId",
                        column: x => x.UsoId,
                        principalTable: "Usos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Suscriptores_EmpresaId",
                table: "Suscriptores",
                column: "EmpresaId");

            migrationBuilder.CreateIndex(
                name: "IX_Suscriptores_UsoId",
                table: "Suscriptores",
                column: "UsoId");

            migrationBuilder.CreateIndex(
                name: "IX_Tarifas_UsoId",
                table: "Tarifas",
                column: "UsoId");

            migrationBuilder.CreateIndex(
                name: "IX_Usuarios_EmpresaId",
                table: "Usuarios",
                column: "EmpresaId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Suscriptores");

            migrationBuilder.DropTable(
                name: "Tarifas");

            migrationBuilder.DropTable(
                name: "Usuarios");

            migrationBuilder.DropTable(
                name: "Usos");

            migrationBuilder.DropTable(
                name: "Empresas");
        }
    }
}
