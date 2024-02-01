
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.Presenter.Catastro
{
    public class GetCatastroPresenter : IGetCatastroOutPutPort, IPresenter<CatastroDTO>
    {
        public CatastroDTO Content { get;  private set; }

        public Task Handle(CatastroDTO catastro)
        {
            Content = catastro;
            return Task.CompletedTask;
        }
    }
}
