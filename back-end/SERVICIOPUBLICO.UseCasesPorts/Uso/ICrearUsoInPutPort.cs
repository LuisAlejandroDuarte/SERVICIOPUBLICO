

using SERVICIOPUBLICO.DTOs.Uso;

namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface ICrearUsoInPutPort
    {
        Task Handle(UsoDTO uso);
    }
}
