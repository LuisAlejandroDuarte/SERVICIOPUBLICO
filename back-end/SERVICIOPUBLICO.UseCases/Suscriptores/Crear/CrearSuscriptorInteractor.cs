

using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.UseCases.Suscriptores.Crear
{
    public class CrearSuscriptorInteractor : ICrearSuscriptorInPutPort
    {

        readonly ISuscriptorRepository repository;
        readonly ICrearSuscriptorOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public CrearSuscriptorInteractor(ISuscriptorRepository repository, ICrearSuscriptorOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(SuscriptorDTO suscriptor)
        {
            var nSuscriptor= this.repository.Crear(suscriptor);

            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(nSuscriptor);
        }
    }
}
