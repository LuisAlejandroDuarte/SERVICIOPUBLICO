using SERVICIOPUBLICO.DTOs.Tarifa;


namespace SERVICIOPUBLICO.UseCasesPorts.Tarifa
{
    public interface ICrearTarifaOutPutPort
    {
        Task Handle(TarifaDTO tarifa);
    }
}

