

using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using SERVICIOPUBLICO.UseCases.Tarifa.Crear;
using SERVICIOPUBLICO.UseCases.Tarifa.Editar;
using SERVICIOPUBLICO.UseCases.Tarifa.Eliminar;
using SERVICIOPUBLICO.UseCases.Tarifa.Get;
using SERVICIOPUBLICO.UseCases.Tarifa.GetAll;
using SERVICIOPUBLICO.UseCases.Usos.Crear;
using SERVICIOPUBLICO.UseCases.Usos.Editar;
using SERVICIOPUBLICO.UseCases.Usos.Eliminar;
using SERVICIOPUBLICO.UseCases.Usos.Get;
using SERVICIOPUBLICO.UseCases.Usos.GetAll;
using SERVICIOPUBLICO.UseCases.Usuarios.ChangePassword;
using SERVICIOPUBLICO.UseCases.Usuarios.Crear;
using SERVICIOPUBLICO.UseCases.Usuarios.Editar;
using SERVICIOPUBLICO.UseCases.Usuarios.Get;
using SERVICIOPUBLICO.UseCases.Usuarios.GetAllUsuarios;
using SERVICIOPUBLICO.UseCases.Usuarios.Login;
using SERVICIOPUBLICO.UseCases.Usuarios.Settings;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System.Text;

namespace SERVICIOPUBLICO.UseCases
{
    public static class DependencyContainer
    {
        public static IServiceCollection AddUseCasesServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.Configure<JwtSettings>(configuration.GetSection("JwtSettings"));

            //Usuarios Login

            services.AddTransient<ILoginInPutPort, LoginInteractor>();
            services.AddTransient<IRenewTokenInPutPort, ReNewTokenInteractor>();
            services.AddTransient<IGetAllUsuariosInputPort, GetAllUsuariosInteractor>();
            services.AddTransient<IGetUsuariosInputPort, GetUsuariosInteractor>();
            services.AddTransient<ICrearUsuarioInPutPort, CrearUsuarioInteractor>();
            services.AddTransient<IEditUsuarioInPutPort, EditUsuarioInterceptor>();
            services.AddTransient<IGetUsuarioInPutPort, GetUsuarioInterceptor>();
            services.AddTransient<IChangePasswordInPutPort, ChangePasswordInteractor>();

            //Usos

            services.AddTransient<ICrearUsoInPutPort, CrearUsoInteractor>();
            services.AddTransient<IEditarUsoInPutPort, EditarUsoInteractor>();
            services.AddTransient<IEliminarUsoInPutPort, EliminarUsoInteractor>();
            services.AddTransient<IGetUsoInPutPort, GetUsoInteractor>();
            services.AddTransient<IGetAllUsosInPutPort, GetAllUsoInteractor>();

            //Tarifas
            services.AddTransient<ICrearTarifaInPutPort, CrearTarifaInteractor>();
            services.AddTransient<IEditarTarifaInPutPort, EditarTarifaInteractor>();
            services.AddTransient<IEliminarTarifaInPutPort, EliminarTarifaInteractor>();
            services.AddTransient<IGetTarifaInPutPort, GetTarifaInteractor>();
            services.AddTransient<IGetAllTarifasInPutPort, GetAllTarifasInteractor>();

            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;

            }).AddJwtBearer(options =>
            {
                options.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    ValidateIssuer = true,
                    ValidateAudience = true,
                    ValidateLifetime = true,
                    ClockSkew = TimeSpan.Zero,
                    ValidIssuer = configuration["JwtSettings:Issuer"],
                    ValidAudience = configuration["JwtSettings:Audience"],
                    IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["JwtSettings:Key"]))
                };
            });

            return services;
        }
    }
}
