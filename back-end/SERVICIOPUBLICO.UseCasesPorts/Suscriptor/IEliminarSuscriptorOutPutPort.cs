
using SERVICIOPUBLICO.DTOs.Suscriptor;

namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface IEliminarSuscriptorOutPutPort
    {
        Task Handle(SuscriptorDTO suscriptor);
    }
}
