using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Uso;


namespace SERVICIOPUBLICO.UseCases.Usos.GetAll
{
    public class GetAllUsoInteractor : IGetAllUsosInPutPort
    {

        readonly IUsoRepository repositrory;
        readonly IGetAllUsosOutPutPort outPutPort;

        public GetAllUsoInteractor(IUsoRepository repositrory, IGetAllUsosOutPutPort outPutPort)
        {
            this.repositrory = repositrory;
            this.outPutPort = outPutPort;
        }

        public Task Handle(long empresaId)
        {
           IEnumerable<UsoDTO> usos = this.repositrory.GetAll(empresaId);
           this.outPutPort.Handle(usos);
           return Task.CompletedTask;

        }
    }
}
