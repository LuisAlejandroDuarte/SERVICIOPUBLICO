

using SERVICIOPUBLICO.DTOs.Usuario;

namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface ICrearUsuarioOutPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
