
using SERVICIOPUBLICO.DTOs.Suscriptor;

namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface IGetSuscriptorOutPutPort
    {
        Task Handle(SuscriptorDTO suscriptor);
    }
}
