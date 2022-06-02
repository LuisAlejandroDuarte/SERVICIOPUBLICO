using SERVICIOPUBLICO.DTOs.Usuario;
namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface ILoginOutPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
