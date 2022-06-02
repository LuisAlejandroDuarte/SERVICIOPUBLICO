using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using SERVICIOPUBLICO.Controllers;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.RepositoryEF;
using SERVICIOPUBLICO.UseCases;

namespace SERVICIOPUBLICO.IoC
{
    public static class DependecyContainer
    {
        public static IServiceCollection AddServicioPublicoDependencies(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddRepositories(configuration);
            services.AddUseCasesServices(configuration);
            services.AddPresenters();
            services.AddHttpContext();

            return services;
        }
    }
}
