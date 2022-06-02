
namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface IRenewTokenInPutPort
    {
        Task Handle(string token);
    }
}
