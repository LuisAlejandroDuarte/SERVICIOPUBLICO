
using SERVICIOPUBLICO.DTOs.Usuario;

namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface IEditUsuarioInPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
