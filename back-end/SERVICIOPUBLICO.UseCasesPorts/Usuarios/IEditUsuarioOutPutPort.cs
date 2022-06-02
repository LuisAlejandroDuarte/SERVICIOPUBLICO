
using SERVICIOPUBLICO.DTOs.Usuario;

namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface IEditUsuarioOutPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
