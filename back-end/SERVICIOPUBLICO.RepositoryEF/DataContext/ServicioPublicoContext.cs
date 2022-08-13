using Microsoft.EntityFrameworkCore;
using SERVICIOPUBLICO.Entities.POCOs;

namespace SERVICIOPUBLICO.RepositoryEF.DataContext
{
    public class ServicioPublicoContext: DbContext
    {
        public ServicioPublicoContext(DbContextOptions<ServicioPublicoContext> options) : base(options) { }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Empresa> Empresas { get; set; }
        public DbSet<Suscriptor> Suscriptores { get; set; }
        public DbSet<Uso> Usos { get; set; }
        public DbSet<Tarifa> Tarifas { get; set; }
        public DbSet<Periodo> Periodos { get; set; }
        public DbSet<Lectura> Lecturas { get; set; }
        public DbSet<NoLectura> NoLecturas { get; set; }

        public DbSet<Catastro> Catastros { get; set; }
        public DbSet<BaseEncuesta> BaseEncuestas { get; set; }

    }
}
