

using SERVICIOPUBLICO.DTOs.Catastro;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public interface IEditarCatastroInPutPort
    {
        Task Handle(CatastroDTO editarCatastro);
    }
}
