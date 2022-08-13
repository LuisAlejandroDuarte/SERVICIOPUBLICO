using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.UseCases.Catastro.GetAll
{
    public class GetAllCatastroInteractor: IGetAllCatastroInPutPort
    {
        readonly ICatastroRepository repository;
        readonly IGetAllCatastroOutPutPort outPutPort;

        public GetAllCatastroInteractor(ICatastroRepository repository, IGetAllCatastroOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        }

        public Task Handle(Paginator paginador)
        {
            var catastro = this.repository.GetAll(paginador);

            this.outPutPort.Handle(catastro);

            return Task.CompletedTask;
        }
    }
}
