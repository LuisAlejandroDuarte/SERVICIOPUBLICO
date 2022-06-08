

using SERVICIOPUBLICO.DTOs.Uso;

namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface IUsoRepository
    {
        IEnumerable<UsoDTO> GetAll(long empresaId);
        UsoDTO Crear(UsoDTO uso);
        UsoDTO Editar(UsoDTO uso);
        UsoDTO Get(long Id);
        UsoDTO Eliminar(long Id);
    }
}
