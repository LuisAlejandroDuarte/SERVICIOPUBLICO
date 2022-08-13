using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    public partial class Encuesta : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<long>(
                name: "LecturaTemporal",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "LecturaAnterior",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "LecturaActual",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "Lectura6",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "Lectura5",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "Lectura4",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "Lectura3",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "Lectura2",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AlterColumn<long>(
                name: "Lectura1",
                table: "Lecturas",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.CreateTable(
                name: "BaseEncuestas",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmpresaId = table.Column<long>(type: "bigint", nullable: true),
                    Interno = table.Column<long>(type: "bigint", nullable: false),
                    Nombre = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Direccion = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UsoId = table.Column<long>(type: "bigint", nullable: false),
                    Acueducto = table.Column<bool>(type: "bit", nullable: false),
                    Alcantarillado = table.Column<bool>(type: "bit", nullable: false),
                    Aseo = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BaseEncuestas", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BaseEncuestas_Empresas_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresas",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_BaseEncuestas_Usos_UsoId",
                        column: x => x.UsoId,
                        principalTable: "Usos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Catastros",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmpresaId = table.Column<long>(type: "bigint", nullable: true),
                    Interno = table.Column<long>(type: "bigint", nullable: false),
                    Nombre = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Direccion = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UsoId = table.Column<long>(type: "bigint", nullable: false),
                    Zona = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Ruta = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Conexion = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Manzana = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Predio = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Acueducto = table.Column<bool>(type: "bit", nullable: false),
                    Alcantarillado = table.Column<bool>(type: "bit", nullable: false),
                    Aseo = table.Column<bool>(type: "bit", nullable: false),
                    TipoConexion = table.Column<int>(type: "int", nullable: false),
                    Caja = table.Column<int>(type: "int", nullable: false),
                    Medidor = table.Column<int>(type: "int", nullable: false),
                    Marca = table.Column<int>(type: "int", nullable: false),
                    Numero = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Diametro = table.Column<double>(type: "float", nullable: false),
                    Lectura = table.Column<long>(type: "bigint", nullable: false),
                    Latitud = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Longitud = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Fachada = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Observacion = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Catastros", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Catastros_Empresas_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresas",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_Catastros_Usos_UsoId",
                        column: x => x.UsoId,
                        principalTable: "Usos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BaseEncuestas_EmpresaId",
                table: "BaseEncuestas",
                column: "EmpresaId");

            migrationBuilder.CreateIndex(
                name: "IX_BaseEncuestas_UsoId",
                table: "BaseEncuestas",
                column: "UsoId");

            migrationBuilder.CreateIndex(
                name: "IX_Catastros_EmpresaId",
                table: "Catastros",
                column: "EmpresaId");

            migrationBuilder.CreateIndex(
                name: "IX_Catastros_UsoId",
                table: "Catastros",
                column: "UsoId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BaseEncuestas");

            migrationBuilder.DropTable(
                name: "Catastros");

            migrationBuilder.AlterColumn<long>(
                name: "LecturaTemporal",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "LecturaAnterior",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "LecturaActual",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "Lectura6",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "Lectura5",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "Lectura4",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "Lectura3",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "Lectura2",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AlterColumn<long>(
                name: "Lectura1",
                table: "Lecturas",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);
        }
    }
}
