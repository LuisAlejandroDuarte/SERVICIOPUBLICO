using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.RepositoryEF.DataContext
{
    
        public class ServicioPublicoContextFactory : IDesignTimeDbContextFactory<ServicioPublicoContext>
        {
            public ServicioPublicoContext CreateDbContext(string[] args)
            {
                var OptionsBuilder = new DbContextOptionsBuilder<ServicioPublicoContext>();

                OptionsBuilder.UseSqlServer("Data Source=DESKTOP-9REACFU;Initial Catalog=SERVICIOPUBLICO;Integrated Security=true").EnableSensitiveDataLogging();

                return new ServicioPublicoContext(OptionsBuilder.Options);
            }
        }
    
}
