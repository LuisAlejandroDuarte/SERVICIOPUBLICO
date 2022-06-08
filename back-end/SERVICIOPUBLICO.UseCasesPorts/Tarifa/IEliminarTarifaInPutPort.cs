
namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface IEliminarTarifaInPutPort
    {
        Task Handle(long Id);
    }
}
