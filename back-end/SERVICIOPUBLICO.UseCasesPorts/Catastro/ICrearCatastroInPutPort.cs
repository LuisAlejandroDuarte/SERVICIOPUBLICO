
using SERVICIOPUBLICO.DTOs.Catastro;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public interface ICrearCatastroInPutPort
    {
        Task Handle(CatastroDTO crearCatastro);        
    }
}
