

using SERVICIOPUBLICO.DTOs;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public  interface IGetAllCatastroInPutPort
    {
        Task Handle(Paginator paginador);
    }
}
