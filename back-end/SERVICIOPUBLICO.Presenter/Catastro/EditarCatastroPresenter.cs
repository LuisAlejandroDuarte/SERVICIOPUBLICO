
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.Presenter.Catastro
{
    public class EditarCatastroPresenter : IEditarCatastroOutPutPort, IPresenter<CatastroDTO>
    {
        public CatastroDTO Content {get;private set;}

        public Task Handle(CatastroDTO editarCatastro)
        {
            Content = editarCatastro;
            return Task.CompletedTask;
        }
    }
}
