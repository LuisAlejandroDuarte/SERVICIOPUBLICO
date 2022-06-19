
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.UseCases.Suscriptores.Eliminar
{
    public class EliminarSuscriptorInteractor : IEliminarSuscriptorInPutPort
    {

        readonly ISuscriptorRepository repository;
        readonly IEliminarSuscriptorOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EliminarSuscriptorInteractor(ISuscriptorRepository repository, IEliminarSuscriptorOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(long Id)
        {
            var suscriptor = this.repository.Eliminar(Id);
            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(suscriptor);            
        }
    }
}
