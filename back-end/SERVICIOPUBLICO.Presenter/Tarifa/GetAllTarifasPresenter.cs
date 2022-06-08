

using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;

namespace SERVICIOPUBLICO.Presenter.Tarifa
{
    public class GetAllTarifasPresenter : IGetAllTarifasOutPutPort, IPresenter<IEnumerable<TarifaDTO>>
    {
        public IEnumerable<TarifaDTO> Content { get;private set; }

        public Task Handle(IEnumerable<TarifaDTO> tarifas)
        {
            Content = tarifas;
            return Task.CompletedTask;
        }
    }
}
