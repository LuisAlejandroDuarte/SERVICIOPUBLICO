using SERVICIOPUBLICO.DTOs.Lectura;


namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface ILecturaRepository
    {
        IEnumerable<GetLecturasDTO> GetLecturas(string zonaRutaEmpresaId);
        CrearLecturaDTO CrearLectura(CrearLecturaDTO crearLectura);
    }
}
