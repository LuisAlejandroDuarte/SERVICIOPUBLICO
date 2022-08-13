using SERVICIOPUBLICO.DTOs.Lectura;
using SERVICIOPUBLICO.UseCasesPorts.Lecturas;


namespace SERVICIOPUBLICO.Presenter.Lectura
{
    public class CrearLecturaPresenter : ICrearLecturaOutPutPort, IPresenter<CrearLecturaDTO>
    {
        public CrearLecturaDTO Content { get;private set; }

        public Task Handle(CrearLecturaDTO crearLectura)
        {
            Content = crearLectura;
            return Task.CompletedTask;
        }
    }
}
