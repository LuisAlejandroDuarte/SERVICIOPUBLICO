using SERVICIOPUBLICO.DTOs.Lectura;


namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface ILecturaRepository
    {
        List<GetLecturasDTO> GetLecturas(RequestLectura lectura);
        CrearLecturaDTO CrearLectura(CrearLecturaDTO crearLectura);
    }
}
