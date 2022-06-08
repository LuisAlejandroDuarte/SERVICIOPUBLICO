using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
namespace SERVICIOPUBLICO.Presenter.Uso
{
    public class EditarUsoPresenter:IEditarUsoOutPutPort,IPresenter<UsoDTO>
    {
        public UsoDTO Content { get; private set; }

        public Task Handle(UsoDTO uso)
        {
            Content = uso;
            return Task.CompletedTask;
        }
    }
}
