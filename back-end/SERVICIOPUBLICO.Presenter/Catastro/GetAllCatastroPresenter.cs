using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.Presenter.Catastro
{
    public class GetAllCatastroPresenter : IGetAllCatastroOutPutPort, IPresenter<ResultDataTable>
    {
        public ResultDataTable Content {get;private set;}

        public Task Handle(ResultDataTable paginador)
        {
            Content = paginador;
            return Task.CompletedTask;
        }
    }
}
