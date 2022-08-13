using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta;


namespace SERVICIOPUBLICO.Presenter.BaseEncuesta
{
    public class GetAllBaseEncuestaPresenter : IGetAllBaseEncuestaOutPutPort, IPresenter<ResultDataTable>
    {
        public ResultDataTable Content { get;private set; }

        public Task Handle(ResultDataTable paginador)
        {
            Content = paginador;
            return Task.CompletedTask;
        }
    }
}
