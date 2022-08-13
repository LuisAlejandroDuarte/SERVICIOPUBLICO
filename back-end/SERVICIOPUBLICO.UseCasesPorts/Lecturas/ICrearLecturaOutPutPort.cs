using SERVICIOPUBLICO.DTOs.Lectura;


namespace SERVICIOPUBLICO.UseCasesPorts.Lecturas
{
    public interface ICrearLecturaOutPutPort
    {
        Task Handle(CrearLecturaDTO crearLectura);
    }
}
