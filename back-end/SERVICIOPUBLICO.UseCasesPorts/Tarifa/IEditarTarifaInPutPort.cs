using SERVICIOPUBLICO.DTOs.Tarifa;


namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface IEditarTarifaInPutPort
    {
        Task Handle(TarifaDTO tarifa);
    }
}

