using SERVICIOPUBLICO.DTOs;

namespace SERVICIOPUBLICO.UseCasesPorts.Suscriptor
{
    public interface IGetAllSuscriptoresOutPutPort
    {
        Task Handle(ResultDataTable paginador);
    }
}
