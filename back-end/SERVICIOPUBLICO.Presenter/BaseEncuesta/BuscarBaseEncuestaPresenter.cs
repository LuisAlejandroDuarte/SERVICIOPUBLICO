

using SERVICIOPUBLICO.DTOs.BaseEncuesta;
using SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta;

namespace SERVICIOPUBLICO.Presenter.BaseEncuesta
{
    public class BuscarBaseEncuestaPresenter : IBuscarBaseEncuestaOutPutPort, IPresenter<BaseEncuestaDTO>
    {
        public BaseEncuestaDTO Content {get;private set;}     

        public Task Handle(BaseEncuestaDTO baseEncuesta)
        {
            Content = baseEncuesta;
            return Task.CompletedTask;
        }
    }
}
