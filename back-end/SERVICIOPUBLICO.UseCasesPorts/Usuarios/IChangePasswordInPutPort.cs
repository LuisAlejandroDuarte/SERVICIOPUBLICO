using SERVICIOPUBLICO.DTOs.Usuario;


namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface IChangePasswordInPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
