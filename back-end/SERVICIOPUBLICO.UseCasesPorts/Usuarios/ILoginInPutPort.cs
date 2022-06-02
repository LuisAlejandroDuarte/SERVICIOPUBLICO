
using SERVICIOPUBLICO.DTOs.Usuario;

namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface ILoginInPutPort
    {
        Task Handle(LoginDTO login);
    }
}
