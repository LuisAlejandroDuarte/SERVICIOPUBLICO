﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using SERVICIOPUBLICO.RepositoryEF.DataContext;

#nullable disable

namespace SERVICIOPUBLICO.RepositoryEF.Migrations
{
    [DbContext(typeof(ServicioPublicoContext))]
    partial class ServicioPublicoContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.5")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.BaseEncuesta", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<bool>("Acueducto")
                        .HasColumnType("bit");

                    b.Property<bool>("Alcantarillado")
                        .HasColumnType("bit");

                    b.Property<bool>("Aseo")
                        .HasColumnType("bit");

                    b.Property<string>("Direccion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long?>("EmpresaId")
                        .HasColumnType("bigint");

                    b.Property<long>("Interno")
                        .HasColumnType("bigint");

                    b.Property<string>("Nombre")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("UsoId")
                        .HasColumnType("bigint");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId");

                    b.HasIndex("UsoId");

                    b.ToTable("BaseEncuestas");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Catastro", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<bool>("Acueducto")
                        .HasColumnType("bit");

                    b.Property<bool>("Alcantarillado")
                        .HasColumnType("bit");

                    b.Property<bool>("Aseo")
                        .HasColumnType("bit");

                    b.Property<int>("Caja")
                        .HasColumnType("int");

                    b.Property<string>("Conexion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("Diametro")
                        .HasColumnType("float");

                    b.Property<string>("Direccion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long?>("EmpresaId")
                        .HasColumnType("bigint");

                    b.Property<string>("Fachada")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("Interno")
                        .HasColumnType("bigint");

                    b.Property<string>("Latitud")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("Lectura")
                        .HasColumnType("bigint");

                    b.Property<string>("Longitud")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Manzana")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Marca")
                        .HasColumnType("int");

                    b.Property<int>("Medidor")
                        .HasColumnType("int");

                    b.Property<string>("Nombre")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Numero")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Observacion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Predio")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Ruta")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("TipoConexion")
                        .HasColumnType("int");

                    b.Property<long>("UsoId")
                        .HasColumnType("bigint");

                    b.Property<string>("Zona")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId");

                    b.HasIndex("UsoId");

                    b.ToTable("Catastros");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Empresa", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<string>("Direccion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nombre")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Empresas");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Lectura", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<DateTime?>("FechaLecturaActual")
                        .HasColumnType("datetime2");

                    b.Property<long?>("Lectura1")
                        .HasColumnType("bigint");

                    b.Property<long?>("Lectura2")
                        .HasColumnType("bigint");

                    b.Property<long?>("Lectura3")
                        .HasColumnType("bigint");

                    b.Property<long?>("Lectura4")
                        .HasColumnType("bigint");

                    b.Property<long?>("Lectura5")
                        .HasColumnType("bigint");

                    b.Property<long?>("Lectura6")
                        .HasColumnType("bigint");

                    b.Property<long?>("LecturaActual")
                        .HasColumnType("bigint");

                    b.Property<long?>("LecturaAnterior")
                        .HasColumnType("bigint");

                    b.Property<long?>("LecturaTemporal")
                        .HasColumnType("bigint");

                    b.Property<long?>("NoLecturaId")
                        .HasColumnType("bigint");

                    b.Property<long>("SuscriptorId")
                        .HasColumnType("bigint");

                    b.Property<long>("UsuarioId")
                        .HasColumnType("bigint");

                    b.HasKey("Id");

                    b.HasIndex("NoLecturaId");

                    b.HasIndex("SuscriptorId");

                    b.HasIndex("UsuarioId");

                    b.ToTable("Lecturas");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.NoLectura", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<long>("EmpresaId")
                        .HasColumnType("bigint");

                    b.Property<string>("Nombre")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId");

                    b.ToTable("NoLecturas");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Periodo", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<int>("Anno")
                        .HasColumnType("int");

                    b.Property<bool>("Estado")
                        .HasColumnType("bit");

                    b.Property<int>("Mes")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Periodos");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Suscriptor", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<bool>("Alcantarillado")
                        .HasColumnType("bit");

                    b.Property<bool>("Aseo")
                        .HasColumnType("bit");

                    b.Property<int>("Atraso")
                        .HasColumnType("int");

                    b.Property<bool?>("Bloqueo")
                        .HasColumnType("bit");

                    b.Property<string>("Codigo")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("CodigoVerificacion")
                        .HasColumnType("int");

                    b.Property<string>("Direccion")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ManzanaDane")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ManzanaEstratifica")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ManzanaIgac")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nombre")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Seccion")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Sector")
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("Sistema")
                        .HasColumnType("bigint");

                    b.Property<string>("Telefono")
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("UsoId")
                        .HasColumnType("bigint");

                    b.HasKey("Id");

                    b.HasIndex("UsoId");

                    b.ToTable("Suscriptores");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Tarifa", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<decimal>("CostoReferenciaCargoFijoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("CostoReferenciaCargoFijoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("CostoReferenciaConsumoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("CostoReferenciaConsumoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("IncrementoAseo")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("IncrementoCargoFijoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("IncrementoCargoFijoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("IncrementoConsumoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("IncrementoConsumoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("InteresMora")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("OtroSubsidio")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("OtroValor")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("PorcentajeContribucionAseo")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("PorcentajeContribucionCargofijoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("PorcentajeContribucionCargofijoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("PorcentajeContribucionConsumoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("PorcentajeContribucionConsumoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("PorcentajeFinanaciacion")
                        .HasColumnType("decimal(10,3)");

                    b.Property<int>("RangoDOS")
                        .HasColumnType("int");

                    b.Property<int>("RangoTRES")
                        .HasColumnType("int");

                    b.Property<int>("RangoUNO")
                        .HasColumnType("int");

                    b.Property<decimal>("SubsidioAseo")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("SubsidioBasicoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("SubsidioBasicoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("SubsidioCargoFijoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("SubsidioCargoFijoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<long>("UsoId")
                        .HasColumnType("bigint");

                    b.Property<decimal>("ValorBarridoAseo")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorBasicoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorBasicoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorCargoFijoAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorCargoFijoAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorComplementarioAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorComplementarioAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorDisposicionAseo")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorRecaudoAseo")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorRecoleccionAseo")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorSuntuarioAcueducto")
                        .HasColumnType("decimal(10,3)");

                    b.Property<decimal>("ValorSuntuarioAlcantarillado")
                        .HasColumnType("decimal(10,3)");

                    b.HasKey("Id");

                    b.HasIndex("UsoId");

                    b.ToTable("Tarifas");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Uso", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<int>("Codigo")
                        .HasColumnType("int");

                    b.Property<string>("Descripcion")
                        .HasColumnType("nvarchar(max)");

                    b.Property<long?>("EmpresaId")
                        .HasColumnType("bigint");

                    b.Property<int>("Estrato")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId");

                    b.ToTable("Usos");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Usuario", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"), 1L, 1);

                    b.Property<string>("Apellido")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Direccion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("EmpresaId")
                        .HasColumnType("bigint");

                    b.Property<bool>("Estado")
                        .HasColumnType("bit");

                    b.Property<string>("Nombre")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Rol")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Telefono")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("User")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId");

                    b.ToTable("Usuarios");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.BaseEncuesta", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Empresa", "Empresa")
                        .WithMany()
                        .HasForeignKey("EmpresaId");

                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Uso", "Uso")
                        .WithMany()
                        .HasForeignKey("UsoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Empresa");

                    b.Navigation("Uso");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Catastro", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Empresa", "Empresa")
                        .WithMany()
                        .HasForeignKey("EmpresaId");

                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Uso", "Uso")
                        .WithMany()
                        .HasForeignKey("UsoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Empresa");

                    b.Navigation("Uso");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Lectura", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.NoLectura", "NoLectura")
                        .WithMany()
                        .HasForeignKey("NoLecturaId");

                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Suscriptor", "Suscriptor")
                        .WithMany()
                        .HasForeignKey("SuscriptorId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Usuario", "Usuario")
                        .WithMany()
                        .HasForeignKey("UsuarioId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("NoLectura");

                    b.Navigation("Suscriptor");

                    b.Navigation("Usuario");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.NoLectura", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Empresa", "Empresa")
                        .WithMany()
                        .HasForeignKey("EmpresaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Empresa");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Suscriptor", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Uso", "Uso")
                        .WithMany("Suscriptores")
                        .HasForeignKey("UsoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Uso");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Tarifa", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Uso", "Uso")
                        .WithMany()
                        .HasForeignKey("UsoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Uso");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Uso", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Empresa", "Empresa")
                        .WithMany()
                        .HasForeignKey("EmpresaId");

                    b.Navigation("Empresa");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Usuario", b =>
                {
                    b.HasOne("SERVICIOPUBLICO.Entities.POCOs.Empresa", "Empresa")
                        .WithMany("Usuarios")
                        .HasForeignKey("EmpresaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Empresa");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Empresa", b =>
                {
                    b.Navigation("Usuarios");
                });

            modelBuilder.Entity("SERVICIOPUBLICO.Entities.POCOs.Uso", b =>
                {
                    b.Navigation("Suscriptores");
                });
#pragma warning restore 612, 618
        }
    }
}
