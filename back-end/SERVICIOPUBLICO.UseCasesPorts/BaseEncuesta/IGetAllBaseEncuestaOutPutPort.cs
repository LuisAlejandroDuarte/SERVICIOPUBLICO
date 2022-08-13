
using SERVICIOPUBLICO.DTOs;

namespace SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta
{
    public interface IGetAllBaseEncuestaOutPutPort
    {
        Task Handle(ResultDataTable paginador);
    }
}
