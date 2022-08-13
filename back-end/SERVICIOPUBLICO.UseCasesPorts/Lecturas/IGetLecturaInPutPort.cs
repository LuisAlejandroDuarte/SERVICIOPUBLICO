using SERVICIOPUBLICO.DTOs.Lectura;

namespace SERVICIOPUBLICO.UseCasesPorts.Lecturas
{
    public interface IGetLecturaInPutPort
    {
        Task Handle(string zonaRutaEmpresaId);
    }
}
