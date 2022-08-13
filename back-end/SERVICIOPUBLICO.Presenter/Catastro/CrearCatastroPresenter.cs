using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.Presenter.Catastro
{
    public class CrearCatastroPresenter : ICrearCatastroOutPutPort, IPresenter<CatastroDTO>
    {
        public CatastroDTO Content {get;private set;}

        public Task Handle(CatastroDTO crearCatastro)
        {
            Content = crearCatastro;
            return Task.CompletedTask;
        }
    }
}
