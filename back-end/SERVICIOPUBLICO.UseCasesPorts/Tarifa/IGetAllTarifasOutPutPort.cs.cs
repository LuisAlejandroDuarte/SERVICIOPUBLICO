using SERVICIOPUBLICO.DTOs.Tarifa;

namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface IGetAllTarifasOutPutPort
    {
        Task Handle(IEnumerable<TarifaDTO> tarifas);
    }
}
