

using SERVICIOPUBLICO.DTOs.Uso;

namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface ICrearUsoOutPutPort
    {
        Task Handle(UsoDTO uso);
    }
}
