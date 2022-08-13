
using SERVICIOPUBLICO.DTOs.Catastro;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public interface ICrearCatastroOutPutPort
    {
        Task Handle(CatastroDTO crearCatastro);
    }
}
