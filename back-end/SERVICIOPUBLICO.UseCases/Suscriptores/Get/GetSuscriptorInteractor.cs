using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.UseCases.Suscriptores.Get
{
    public class GetSuscriptorInteractor : IGetSuscriptorInPutPort
    {

        readonly ISuscriptorRepository repository;
        readonly IGetSuscriptorOutPutPort outPutPort;

        public GetSuscriptorInteractor(ISuscriptorRepository repository, IGetSuscriptorOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        }

        public Task Handle(long Id)
        {
            var suscriptor = this.repository.Get(Id);
            this.outPutPort.Handle(suscriptor);

            return Task.CompletedTask;
        }
    }
}
