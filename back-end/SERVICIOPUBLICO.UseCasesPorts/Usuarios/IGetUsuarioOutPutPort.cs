using SERVICIOPUBLICO.DTOs.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface IGetUsuarioOutPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
