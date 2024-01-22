using Microsoft.AspNetCore.Http;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.UseCases.Catastro.Editar
{
    public class EditarCatastroInteractor:IEditarCatastroInPutPort
    {

        readonly ICatastroRepository repository;
        readonly IEditarCatastroOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EditarCatastroInteractor(ICatastroRepository repository, IEditarCatastroOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }
 

        public async Task Handle(IFormCollection editarCatastro)
        {
            var result = this.repository.EditarCatastro(editarCatastro);
            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(result);
        }
    }
}
