using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCases.Usuarios.ChangePassword
{
    public class ChangePasswordInteractor : IChangePasswordInPutPort
    {
        readonly IUsuarioRepository repository;
        readonly IChangePasswordOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;
public ChangePasswordInteractor(IUsuarioRepository repository, IChangePasswordOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(UsuarioDTO usuario)
        {
            this.repository.ChangePassword(usuario);
            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(true);
            

        }
    }
}
