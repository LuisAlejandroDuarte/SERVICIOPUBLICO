using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;


namespace SERVICIOPUBLICO.Presenter.Tarifa
{
    public class GetTarifaPresenter : IGetTarifaOutPutPort, IPresenter<TarifaDTO>
    {
        public TarifaDTO Content { get; private set; }

        public Task Handle(TarifaDTO tarifa)
        {
           Content = tarifa;
            return Task.CompletedTask;
        }
    }
}
