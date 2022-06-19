using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Suscriptor;


namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface ISuscriptorRepository
    {
        ResultDataTable GetAll(Paginator paginator);
        SuscriptorDTO Crear(SuscriptorDTO suscriptor);
        SuscriptorDTO Editar(SuscriptorDTO suscriptor);
        SuscriptorDTO Get(long Id);
        SuscriptorDTO Eliminar(long Id);
    }
}
