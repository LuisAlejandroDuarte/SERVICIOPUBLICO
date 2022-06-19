using SERVICIOPUBLICO.DTOs.Suscriptor;
namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface IEditarSuscriptorInPutPort
    {
        Task Handle(SuscriptorDTO suscriptor);
    }
}
