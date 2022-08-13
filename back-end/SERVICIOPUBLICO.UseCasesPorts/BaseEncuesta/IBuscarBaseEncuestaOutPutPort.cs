using SERVICIOPUBLICO.DTOs.BaseEncuesta;

namespace SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta
{
    public interface IBuscarBaseEncuestaOutPutPort
    {
        Task Handle(BaseEncuestaDTO baseEncuesta);
    }
}
