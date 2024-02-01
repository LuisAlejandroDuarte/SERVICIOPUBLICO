

using Microsoft.AspNetCore.Http;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Catastro;

namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface ICatastroRepository
    {
        ResultDataTable GetAll(Paginator paginator);

        CatastroDTO GetCatastro(long Id);

        CatastroDTO CrearCatastro(IFormCollection formColection);
        CatastroDTO EditarCatastro(IFormCollection formColection);

    }
}
