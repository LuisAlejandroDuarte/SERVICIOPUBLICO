using SERVICIOPUBLICO.DTOs.Tarifa;


namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface IEditarTarifaOutPutPort
    {
        Task Handle(TarifaDTO tarifa);
    }
}
