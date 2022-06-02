using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCases.Usuarios.Get
{
    public class GetUsuarioInterceptor : IGetUsuarioInPutPort
    {

        readonly IUsuarioRepository repository;
        readonly IGetUsuarioOutPutPort outPutPort;
        

        public GetUsuarioInterceptor(IUsuarioRepository repository, IGetUsuarioOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        
        }

        public Task Handle(long Id)
        {
            var usuario= this.repository.GetUser(Id);
            this.outPutPort.Handle(usuario);
            return Task.CompletedTask;
        }
    }
}
