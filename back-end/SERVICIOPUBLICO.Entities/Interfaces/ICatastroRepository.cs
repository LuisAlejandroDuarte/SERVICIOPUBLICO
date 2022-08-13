

using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Catastro;

namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface ICatastroRepository
    {
        ResultDataTable GetAll(Paginator paginator);
        CatastroDTO CrearCatastro(CatastroDTO Catastro);
        CatastroDTO EditarCatastro(CatastroDTO editarCatastro);
    }
}
