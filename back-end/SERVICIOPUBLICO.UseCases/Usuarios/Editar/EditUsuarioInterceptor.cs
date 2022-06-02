using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCases.Usuarios.Editar
{
    public class EditUsuarioInterceptor : IEditUsuarioInPutPort
    {
        readonly IUsuarioRepository repository;
        readonly IEditUsuarioOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EditUsuarioInterceptor(IUsuarioRepository repository, IEditUsuarioOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(UsuarioDTO usuario)
        {
            var result=this.repository.ActualizarUsuario(usuario);
            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(result);                        
        }
    }
}
