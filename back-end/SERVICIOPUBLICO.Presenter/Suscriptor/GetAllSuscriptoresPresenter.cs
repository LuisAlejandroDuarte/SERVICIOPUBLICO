using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.Presenter.Suscriptor
{
    public class GetAllSuscriptoresPresenter : IGetAllSuscriptoresOutPutPort, IPresenter<ResultDataTable>
    {
        public ResultDataTable Content {get;private set;}

        public Task Handle(ResultDataTable paginador)
        {
            Content = paginador;
            return Task.CompletedTask;
        }
    }
}
