using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta;

namespace SERVICIOPUBLICO.UseCases.BaseEncuesta.GetAll
{
    public class GetAllBaseEncuestaInteractor : IGetAllBaseEncuestaInPutPort
    {
        readonly IBaseEncuestaRepository repository;
        readonly IGetAllBaseEncuestaOutPutPort outPutPort;

        public GetAllBaseEncuestaInteractor(IBaseEncuestaRepository repository, IGetAllBaseEncuestaOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        }

        public Task Handle(Paginator paginador)
        {
            var baseEncuesta = this.repository.GetAll(paginador);
            this.outPutPort.Handle(baseEncuesta);

            return Task.CompletedTask;
        }
    }
}
