using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Uso;

namespace SERVICIOPUBLICO.UseCases.Usos.Editar
{
    public class EditarUsoInteractor:IEditarUsoInPutPort
    {
        readonly IUsoRepository repository;
        readonly IEditarUsoOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EditarUsoInteractor(IUsoRepository repository, IEditarUsoOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(UsoDTO uso)
        {
            var newuso = this.repository.Editar(uso);

            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(newuso);

        }
    }
}
