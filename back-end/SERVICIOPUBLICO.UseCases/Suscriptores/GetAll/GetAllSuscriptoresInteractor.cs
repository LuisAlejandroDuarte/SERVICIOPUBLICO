using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.UseCases.Suscriptores.GetAll
{
    public class GetAllSuscriptoresInteractor : IGetAllSuscriptoresInPutPort
    {

        readonly ISuscriptorRepository repository;
        readonly IGetAllSuscriptoresOutPutPort outPutPort;

        public GetAllSuscriptoresInteractor(ISuscriptorRepository repository, IGetAllSuscriptoresOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        }

        public Task Handle(Paginator paginador)
        {
           var suscriptores = this.repository.GetAll(paginador);

            this.outPutPort.Handle(suscriptores);

            return Task.CompletedTask;

        }
    }
}
