

using SERVICIOPUBLICO.DTOs.Uso;

namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface IGetUsoOutPutPort
    {
        Task Handle(UsoDTO uso);
    }
}
