

using SERVICIOPUBLICO.DTOs.Catastro;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public interface IEditarCatastroOutPutPort
    {
        Task Handle(CatastroDTO editarCatastro);
    }
}
