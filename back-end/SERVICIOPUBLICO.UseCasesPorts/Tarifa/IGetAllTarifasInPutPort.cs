
namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface IGetAllTarifasInPutPort
    {
        Task Handle(long empresaId);
    }
}
