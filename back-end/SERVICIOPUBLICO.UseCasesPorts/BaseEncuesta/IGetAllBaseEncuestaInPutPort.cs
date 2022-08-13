using SERVICIOPUBLICO.DTOs;

namespace SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta
{
    public interface IGetAllBaseEncuestaInPutPort
    {
        Task Handle(Paginator paginador);
    }
}
