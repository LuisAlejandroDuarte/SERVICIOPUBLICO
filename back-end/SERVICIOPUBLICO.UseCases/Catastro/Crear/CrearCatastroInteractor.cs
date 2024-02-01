using Microsoft.AspNetCore.Http;
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.UseCases.Catastro.Crear
{
    public class CrearCatastroInteractor : ICrearCatastroInPutPort
    {

        readonly ICatastroRepository repository;
        readonly ICrearCatastroOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public CrearCatastroInteractor(ICatastroRepository repository, ICrearCatastroOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }


        public async Task Handle(IFormCollection crearCatastro)
        {
            var catastro = this.repository.CrearCatastro(crearCatastro);

            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(catastro);
        }
    }
}
