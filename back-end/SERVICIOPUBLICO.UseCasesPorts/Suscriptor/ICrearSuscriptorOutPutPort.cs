using SERVICIOPUBLICO.DTOs.Suscriptor;

namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface ICrearSuscriptorOutPutPort
    {
        Task Handle(SuscriptorDTO suscriptor);
    }
}
