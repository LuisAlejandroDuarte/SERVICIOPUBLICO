using SERVICIOPUBLICO.DTOs.Suscriptor;

namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface ICrearSuscriptorInPutPort
    {
        Task Handle(SuscriptorDTO suscriptor);
    }
}
