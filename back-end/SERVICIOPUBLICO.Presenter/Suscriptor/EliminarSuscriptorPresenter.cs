using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.Presenter.Suscriptor
{
    public class EliminarSuscriptorPresenter : IEliminarSuscriptorOutPutPort, IPresenter<SuscriptorDTO>
    {
        public SuscriptorDTO Content {get;private set;}

        public Task Handle(SuscriptorDTO suscriptor)
        {
            Content = suscriptor;
            return Task.CompletedTask;  
        }
    }
}
