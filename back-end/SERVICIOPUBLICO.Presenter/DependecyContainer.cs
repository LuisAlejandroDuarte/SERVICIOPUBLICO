using Microsoft.Extensions.DependencyInjection;
using SERVICIOPUBLICO.Presenter.BaseEncuesta;
using SERVICIOPUBLICO.Presenter.Catastro;
using SERVICIOPUBLICO.Presenter.Suscriptor;
using SERVICIOPUBLICO.Presenter.Tarifa;
using SERVICIOPUBLICO.Presenter.Uso;
using SERVICIOPUBLICO.Presenter.Usuarios;
using SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
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


            //Usos
            services.AddScoped<IGetUsoOutPutPort, GetUsoPresenter>();
            services.AddScoped<IEditarUsoOutPutPort, EditarUsoPresenter>();
            services.AddScoped<ICrearUsoOutPutPort, CrearUsoPresenter>();
            services.AddScoped<IEliminarUsoOutPutPort, EliminarUsoPresenter>();
            services.AddScoped<IGetAllUsosOutPutPort, GetAllUsosPresenter>();

            //Tarifas
            services.AddScoped<ICrearTarifaOutPutPort, CrearTarifaPresenter>();
            services.AddScoped<IEditarTarifaOutPutPort, EditarTarifaPresenter>();
            services.AddScoped<IEliminarTarifaOutPutPort, EliminarTarifaPresenter>();
            services.AddScoped<IGetTarifaOutPutPort, GetTarifaPresenter>();
            services.AddScoped<IGetAllTarifasOutPutPort, GetAllTarifasPresenter>();


            //Suscriptores
            services.AddScoped<ICrearSuscriptorOutPutPort, CrearSuscriptorPresenter>();
            services.AddScoped<IEditarSuscriptorOutPutPort, EditarSuscriptorPresenter>();
            services.AddScoped<IEliminarSuscriptorOutPutPort, EliminarSuscriptorPresenter>();
            services.AddScoped<IGetSuscriptorOutPutPort, GetSuscriptorPresenter>();
            services.AddScoped<IGetAllSuscriptoresOutPutPort, GetAllSuscriptoresPresenter>();

            //Catastro
            services.AddScoped<ICrearCatastroOutPutPort, CrearCatastroPresenter>();
            services.AddScoped<IEditarCatastroOutPutPort, EditarCatastroPresenter>();
            services.AddScoped<IGetAllCatastroOutPutPort, GetAllCatastroPresenter>();
            services.AddScoped<IGetCatastroOutPutPort, GetCatastroPresenter>();

            //Base Encuesta
            services.AddScoped<IBuscarBaseEncuestaOutPutPort, BuscarBaseEncuestaPresenter>();
            services.AddScoped<IGetAllBaseEncuestaOutPutPort, GetAllBaseEncuestaPresenter>();


            return services;
        }
    }
}
