using SERVICIOPUBLICO.DTOs.Lectura;

namespace SERVICIOPUBLICO.UseCasesPorts.Lecturas
{
    public interface IGetLecturaOutPutPort
    {
        Task Handle(List<GetLecturasDTO> lecturas);
    }
}
