
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.Presenter.Suscriptor
{
    public class EditarSuscriptorPresenter : IEditarSuscriptorOutPutPort, IPresenter<SuscriptorDTO>
    {
        public SuscriptorDTO Content {get;private set;}

        public Task Handle(SuscriptorDTO suscriptor)
        {
            Content = suscriptor;
            return Task.CompletedTask;
        }
    }
}
