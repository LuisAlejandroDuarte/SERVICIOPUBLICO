

using Microsoft.AspNetCore.Http;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public interface IEditarCatastroInPutPort
    {
        Task Handle(IFormCollection editarCatastro);
    }
}
