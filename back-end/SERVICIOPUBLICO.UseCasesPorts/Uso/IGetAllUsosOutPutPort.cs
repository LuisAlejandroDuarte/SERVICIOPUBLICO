

using SERVICIOPUBLICO.DTOs.Uso;

namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface IGetAllUsosOutPutPort
    {
        Task Handle(IEnumerable<UsoDTO> usos);
    }
}
