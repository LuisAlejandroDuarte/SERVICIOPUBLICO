
using SERVICIOPUBLICO.DTOs.Suscriptor;

namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface IEliminarSuscriptorInPutPort
    {
        Task Handle(long Id);
    }
}
