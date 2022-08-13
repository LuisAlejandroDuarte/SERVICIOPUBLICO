using SERVICIOPUBLICO.DTOs.Lectura;


namespace SERVICIOPUBLICO.UseCasesPorts.Lecturas
{
    public interface ICrearLecturaInPutPort
    {
        Task Handle(CrearLecturaDTO crearLectura);
    }
}
