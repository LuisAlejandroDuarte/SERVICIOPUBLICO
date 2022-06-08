
using SERVICIOPUBLICO.DTOs.Uso;

namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface IEditarUsoOutPutPort
    {
        Task Handle(UsoDTO uso);
    }
}
