using SERVICIOPUBLICO.DTOs.Tarifa;

namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface IEliminarTarifaOutPutPort
    {
        Task Handle(TarifaDTO tarifa);
    }
}
