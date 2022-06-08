
using SERVICIOPUBLICO.DTOs.Tarifa;

namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface IGetTarifaOutPutPort
    {
        Task Handle(TarifaDTO tarifa);
    }
}
