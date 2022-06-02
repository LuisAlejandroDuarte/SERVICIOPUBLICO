using SERVICIOPUBLICO.DTOs.Usuario;

namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface IRenewTokenOutPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
