using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;


namespace SERVICIOPUBLICO.UseCases.Tarifa.Editar
{
    public class EditarTarifaInteractor : IEditarTarifaInPutPort
    {

        readonly ITarifaRepository repository;
        readonly IEditarTarifaOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EditarTarifaInteractor(ITarifaRepository repository, IEditarTarifaOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(TarifaDTO tarifa)
        {
            var editado = repository.Editar(tarifa);
            await unitOfWork.SaveChanges();
            await outPutPort.Handle(editado);

        }
    }
}
