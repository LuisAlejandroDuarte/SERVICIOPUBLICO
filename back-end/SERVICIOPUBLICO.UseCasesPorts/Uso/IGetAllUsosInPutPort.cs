

namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface IGetAllUsosInPutPort
    {
        Task Handle(long empresaId);
    }
}
