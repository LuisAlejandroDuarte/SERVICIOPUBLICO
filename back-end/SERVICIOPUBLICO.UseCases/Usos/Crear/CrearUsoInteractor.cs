using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Uso;


namespace SERVICIOPUBLICO.UseCases.Usos.Crear
{
    public class CrearUsoInteractor : ICrearUsoInPutPort
    {
        readonly IUsoRepository repository;
        readonly ICrearUsoOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public CrearUsoInteractor(IUsoRepository repository, ICrearUsoOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(UsoDTO uso)
        {
            var newuso=this.repository.Crear(uso);

            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(newuso);

        }
    }
}
