using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;

namespace SERVICIOPUBLICO.UseCases.Tarifa.Get
{
    public class GetTarifaInteractor : IGetTarifaInPutPort
    {

        readonly ITarifaRepository repository;
        readonly IGetTarifaOutPutPort outPutPort;

        public GetTarifaInteractor(ITarifaRepository repository, IGetTarifaOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        }

        public Task Handle(long Id)
        {
            var tarifa = this.repository.Get(Id);
            this.outPutPort.Handle(tarifa);
            return Task.CompletedTask;
        }
    }
}
