
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.UseCases.Suscriptores.Editar
{
    public class EditarSuscriptorInteractor : IEditarSuscriptorInPutPort
    {

        readonly ISuscriptorRepository repository;
        readonly IEditarSuscriptorOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EditarSuscriptorInteractor(ISuscriptorRepository repository, IEditarSuscriptorOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(SuscriptorDTO suscriptor)
        {
            var eSuscriptor = this.repository.Editar(suscriptor);

            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(eSuscriptor);
        }
    }
}
