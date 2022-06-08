using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Presenter.Uso
{
    public class GetAllUsosPresenter : IGetAllUsosOutPutPort, IPresenter<IEnumerable<UsoDTO>>
    {
        public IEnumerable<UsoDTO> Content {get;private set;}

        public Task Handle(IEnumerable<UsoDTO> usos)
        {
            Content = usos;
            return Task.CompletedTask;
        }
    }
}
