using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.RepositoryEF.DataContext;
using SERVICIOPUBLICO.RepositoryEF.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.RepositoryEF
{
    public static class DependencyContainer
    {
        public static IServiceCollection AddRepositories(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<ServicioPublicoContext>(options =>
                options.UseSqlServer(configuration.GetConnectionString("ConectionString")));
            services.AddAutoMapper(Assembly.GetExecutingAssembly());
            services.AddScoped<IUsuarioRepository, UsuarioRepository>();
            services.AddScoped<IUsoRepository, UsoRepository>();
            services.AddScoped<ITarifaRepository, TarifaRepository>();
            services.AddScoped<ISuscriptorRepository, SuscriptorRepository>();
            services.AddScoped<IBaseEncuestaRepository, BaseEncuestaRepository>();
            services.AddScoped<ICatastroRepository, CatastroRepository>();
            services.AddScoped<IUnitOfWork, UnitOfWork>();

            return services;

        }
    }
}
