using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;

namespace SERVICIOPUBLICO.UseCases.Tarifa.Eliminar
{
    public class EliminarTarifaInteractor : IEliminarTarifaInPutPort
    {

        readonly ITarifaRepository repository;
        readonly IEliminarTarifaOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EliminarTarifaInteractor(ITarifaRepository repository, IEliminarTarifaOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(long Id)
        {
            var eliminado = repository.Eliminar(Id);
            await unitOfWork.SaveChanges();
            await outPutPort.Handle(eliminado);

        }
    }
}
