using SERVICIOPUBLICO.DTOs;


namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface IGetAllSuscriptoresInPutPort
    {
        Task Handle(Paginator paginador);
    }
}
