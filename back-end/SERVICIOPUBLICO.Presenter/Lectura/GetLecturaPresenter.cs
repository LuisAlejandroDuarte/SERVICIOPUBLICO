using SERVICIOPUBLICO.DTOs.Lectura;
using SERVICIOPUBLICO.UseCasesPorts.Lecturas;

namespace SERVICIOPUBLICO.Presenter.Lectura
{
    public class GetLecturaPresenter : IGetLecturaOutPutPort, IPresenter<List<GetLecturasDTO>>
    {
        public List<GetLecturasDTO> Content {get;private set;}

        public Task Handle(List<GetLecturasDTO> lecturas)
        {
            Content = lecturas;
            return Task.CompletedTask;
        }
    }
}
