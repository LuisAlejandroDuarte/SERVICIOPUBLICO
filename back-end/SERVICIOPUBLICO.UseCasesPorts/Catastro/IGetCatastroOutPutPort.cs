using SERVICIOPUBLICO.DTOs.Catastro;

namespace SERVICIOPUBLICO.UseCasesPorts.Catastro
{
    public interface IGetCatastroOutPutPort
    {
        Task Handle(CatastroDTO catastro);
    }
}
