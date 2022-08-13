
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta;

namespace SERVICIOPUBLICO.UseCases.BaseEncuesta.Get
{
    public class BuscarBaseEncuestaInteractor:IBuscarBaseEncuestaInPutPort
    {
        readonly IBaseEncuestaRepository repository;
        readonly IBuscarBaseEncuestaOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public BuscarBaseEncuestaInteractor(IBaseEncuestaRepository repository, IBuscarBaseEncuestaOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }


        public Task Handle(long Id)
        {
            var baseEncuesta = this.repository.Get(Id);
            this.outPutPort.Handle(baseEncuesta);

            return Task.CompletedTask;
        }
    }
}
