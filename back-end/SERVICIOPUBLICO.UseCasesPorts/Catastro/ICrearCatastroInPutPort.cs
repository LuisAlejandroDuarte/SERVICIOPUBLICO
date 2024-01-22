
using Microsoft.AspNetCore.Http;


namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public interface ICrearCatastroInPutPort
    {
        Task Handle(IFormCollection crearCatastro);        
    }
}
