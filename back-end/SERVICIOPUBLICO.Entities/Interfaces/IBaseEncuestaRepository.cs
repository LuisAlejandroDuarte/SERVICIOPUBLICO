using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.BaseEncuesta;


namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface IBaseEncuestaRepository
    {
        BaseEncuestaDTO Get(long Id);

        ResultDataTable GetAll(Paginator paginator);
    }
}
