using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Presenter.Uso
{
    public class CrearUsoPresenter : ICrearUsoOutPutPort, IPresenter<UsoDTO>
    {
        public UsoDTO Content {get;private set;}

        public Task Handle(UsoDTO uso)
        {
            Content = uso;
            return Task.CompletedTask;
        }
    }
}
