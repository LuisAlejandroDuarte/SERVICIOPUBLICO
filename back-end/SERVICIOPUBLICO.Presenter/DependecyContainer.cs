using Microsoft.Extensions.DependencyInjection;
using SERVICIOPUBLICO.Presenter.Usuarios;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;

namespace SERVICIOPUBLICO.Presenter
{
    public static class DependecyContainer
    {
        public static IServiceCollection AddPresenters(this IServiceCollection services)
        {
            services.AddScoped<ILoginOutPutPort, LoginPresenter>();
            services.AddScoped<IRenewTokenOutPutPort, RenewTokenPresenter>();
            services.AddScoped<IGetAllUsuariosOutputPort, GetAllUsuariosPresenter>();
            services.AddScoped<IGetUsuariosOutPutPort, GetUsuariosPresenter>();

            services.AddScoped<ICrearUsuarioOutPutPort, CrearUsuarioPresenter>();
            services.AddScoped<IEditUsuarioOutPutPort, EditUsuarioPresenter>();
            services.AddScoped<IGetUsuarioOutPutPort, GetUsuarioPresenter>();
            services.AddScoped<IChangePasswordOutPutPort, ChangePasswordPresenter>();

            return services;
        }
    }
}
