
using Microsoft.Extensions.Options;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCases.Usuarios.Settings;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System.IdentityModel.Tokens.Jwt;

namespace SERVICIOPUBLICO.UseCases.Usuarios.Login
{
    public class LoginInteractor : ILoginInPutPort
    {
        private readonly IUsuarioRepository Repository;
        private readonly ILoginOutPutPort OutputPort;
        private readonly JwtSettings jwtSettings;

        public LoginInteractor(IUsuarioRepository repository, ILoginOutPutPort outputPort, IOptions<JwtSettings> jwtSettings)
        {
            Repository = repository;
            OutputPort = outputPort;
            this.jwtSettings = jwtSettings.Value;
        }

        public Task Handle(LoginDTO login)
        {
            var usuario = Repository.Login(login);
     
            usuario.Token = new JwtSecurityTokenHandler().WriteToken(GeneraToken.GeneratorToken(usuario, this.jwtSettings));

            OutputPort.Handle(usuario);
            return Task.CompletedTask;
        }


    }
}
