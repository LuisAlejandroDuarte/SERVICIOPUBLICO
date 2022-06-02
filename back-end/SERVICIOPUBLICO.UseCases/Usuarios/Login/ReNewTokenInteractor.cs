using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCases.Usuarios.Settings;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCases.Usuarios.Login
{
    public class ReNewTokenInteractor : IRenewTokenInPutPort
    {
        private readonly IUsuarioRepository repository;
        private readonly IRenewTokenOutPutPort outPutPort;
        private readonly JwtSettings jwtSettings;
        public ReNewTokenInteractor(IUsuarioRepository repository, IRenewTokenOutPutPort outPutPort, IOptions<JwtSettings> jwtSettings)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.jwtSettings = jwtSettings.Value;
        }

        public Task Handle(string token)
        {
            var handler = new JwtSecurityTokenHandler();

            ClaimsPrincipal data = handler.ValidateToken(token, new TokenValidationParameters
            {
                ValidateAudience = false,
                ValidateIssuer = false,
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(this.jwtSettings.Key)),
                ValidateLifetime = false
            }, out SecurityToken validatedToken);

            var id = Convert.ToInt64(data.Claims.First(c => c.Type == CustomClaimTypes.Uid)?.Value);

            var user = this.repository.GetUser(id);

            if (user == null)
            {
                throw new Exception($"El token no es válido ");
            }

            user.Token = new JwtSecurityTokenHandler().WriteToken(GeneraToken.GeneratorToken(user, this.jwtSettings));

            outPutPort.Handle(user);

            return Task.CompletedTask;

        }


    }
}
