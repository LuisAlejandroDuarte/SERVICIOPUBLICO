using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Presenter.Tarifa
{
    public class EditarTarifaPresenter : IEditarTarifaOutPutPort, IPresenter<TarifaDTO>
    {
        public TarifaDTO Content { get;private set; }

        public Task Handle(TarifaDTO tarifa)
        {
           Content = tarifa;
            return Task.CompletedTask;
        }
    }
}
