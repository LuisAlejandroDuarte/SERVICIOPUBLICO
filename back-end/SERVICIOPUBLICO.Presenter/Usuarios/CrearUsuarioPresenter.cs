using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Presenter.Usuarios
{
    public class CrearUsuarioPresenter : ICrearUsuarioOutPutPort, IPresenter<UsuarioDTO>
    {
        public UsuarioDTO Content {get;private set;}    

        public Task Handle(UsuarioDTO usuario)
        {
            Content = usuario;
            return Task.CompletedTask;
            
        }
    }
}
