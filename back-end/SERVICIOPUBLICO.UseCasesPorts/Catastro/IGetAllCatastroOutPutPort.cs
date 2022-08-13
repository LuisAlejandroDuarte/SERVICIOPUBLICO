
using SERVICIOPUBLICO.DTOs;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public  interface IGetAllCatastroOutPutPort
    {
        Task Handle(ResultDataTable paginador);
    }
}
