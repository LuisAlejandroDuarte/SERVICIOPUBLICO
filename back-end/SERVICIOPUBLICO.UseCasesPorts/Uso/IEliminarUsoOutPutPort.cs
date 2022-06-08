

using SERVICIOPUBLICO.DTOs.Uso;

namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface IEliminarUsoOutPutPort
    {
        Task Handle(UsoDTO uso);
    }
}
