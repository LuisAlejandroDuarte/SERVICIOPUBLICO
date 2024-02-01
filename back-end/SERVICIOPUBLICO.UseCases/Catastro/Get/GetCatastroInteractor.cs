using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;


namespace SERVICIOPUBLICO.UseCases.Catastro.Get
{
    public class GetCatastroInteractor : IGetCatastroInPutPort
    {
        readonly ICatastroRepository repository;
        readonly IGetCatastroOutPutPort outPutPort;

        public GetCatastroInteractor(ICatastroRepository repository, IGetCatastroOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        }

        public Task Handle(long Id)
        {
            var catastro = this.repository.GetCatastro(Id);
            this.outPutPort.Handle(catastro);

            return Task.CompletedTask;
        }
    }
}
