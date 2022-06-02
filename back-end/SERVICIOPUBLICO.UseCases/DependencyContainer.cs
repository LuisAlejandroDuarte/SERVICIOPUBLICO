

using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using SERVICIOPUBLICO.UseCases.Usuarios.ChangePassword;
using SERVICIOPUBLICO.UseCases.Usuarios.Crear;
using SERVICIOPUBLICO.UseCases.Usuarios.Editar;
using SERVICIOPUBLICO.UseCases.Usuarios.Get;
using SERVICIOPUBLICO.UseCases.Usuarios.GetAllUsuarios;
using SERVICIOPUBLICO.UseCases.Usuarios.Login;
using SERVICIOPUBLICO.UseCases.Usuarios.Settings;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System.Text;

namespace SERVICIOPUBLICO.UseCases
{
    public static class DependencyContainer
    {
        public static IServiceCollection AddUseCasesServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.Configure<JwtSettings>(configuration.GetSection("JwtSettings"));
            services.AddTransient<ILoginInPutPort, LoginInteractor>();
            services.AddTransient<IRenewTokenInPutPort, ReNewTokenInteractor>();

            services.AddTransient<IGetAllUsuariosInputPort, GetAllUsuariosInteractor>();
            services.AddTransient<IGetUsuariosInputPort, GetUsuariosInteractor>();
            services.AddTransient<ICrearUsuarioInPutPort, CrearUsuarioInteractor>();
            services.AddTransient<IEditUsuarioInPutPort, EditUsuarioInterceptor>();
            services.AddTransient<IGetUsuarioInPutPort, GetUsuarioInterceptor>();
            services.AddTransient<IChangePasswordInPutPort, ChangePasswordInteractor>();

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
