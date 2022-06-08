using SERVICIOPUBLICO.DTOs.Uso;


namespace SERVICIOPUBLICO.UseCasesPorts.Uso
{
    public interface IEditarUsoInPutPort
    {
        Task Handle(UsoDTO uso);
    }
}
