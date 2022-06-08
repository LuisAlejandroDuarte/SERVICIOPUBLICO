using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;


namespace SERVICIOPUBLICO.UseCases.Tarifa.Crear
{
    public class CrearTarifaInteractor : ICrearTarifaInPutPort
    {

        readonly ITarifaRepository repository;
        readonly ICrearTarifaOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public CrearTarifaInteractor(ITarifaRepository repository, ICrearTarifaOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(TarifaDTO tarifa)
        {
            var nuevo = repository.Crear(tarifa);
            await unitOfWork.SaveChanges();
            await outPutPort.Handle(nuevo);

        }
    }
}
