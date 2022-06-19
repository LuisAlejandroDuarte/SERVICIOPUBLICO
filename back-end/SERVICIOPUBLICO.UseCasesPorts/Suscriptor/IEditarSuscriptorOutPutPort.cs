using SERVICIOPUBLICO.DTOs.Suscriptor;


namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface IEditarSuscriptorOutPutPort
    {
        Task Handle(SuscriptorDTO suscriptor);
    }
}
