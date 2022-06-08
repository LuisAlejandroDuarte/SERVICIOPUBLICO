using SERVICIOPUBLICO.DTOs.Tarifa;


namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface ICrearTarifaInPutPort
    {
        Task Handle(TarifaDTO tarifa);
    }
}
