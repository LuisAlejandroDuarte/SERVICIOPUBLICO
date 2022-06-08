
using SERVICIOPUBLICO.DTOs.Tarifa;

namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface  ITarifaRepository
    {
        IEnumerable<TarifaDTO> GetAll(long empresaId);
        TarifaDTO Crear(TarifaDTO uso);
        TarifaDTO Editar(TarifaDTO uso);
        TarifaDTO Get(long Id);
        TarifaDTO Eliminar(long Id);
    }
}
