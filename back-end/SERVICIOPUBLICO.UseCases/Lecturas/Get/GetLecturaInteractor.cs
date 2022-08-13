using SERVICIOPUBLICO.DTOs.Lectura;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Lecturas;


namespace SERVICIOPUBLICO.UseCases.Lecturas.Get
{
    public class GetLecturaInteractor : IGetLecturaInPutPort
    {
        readonly ILecturaRepository repository;
        readonly IGetLecturaOutPutPort outPutPort;

        readonly IUnitOfWork unitOfWork;

        public GetLecturaInteractor(ILecturaRepository repository, IGetLecturaOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public Task Handle(string zonaRutaEmpresaId)
        {
            RequestLectura request = new RequestLectura();
            request.Ruta = zonaRutaEmpresaId.Split("_")[0];
            request.Zona= zonaRutaEmpresaId.Split("_")[1];
            request.EmpresaId=Convert.ToInt64(zonaRutaEmpresaId.Split("_")[2]);

            var lectura = this.repository.GetLecturas(request);
            this.outPutPort.Handle(lectura);

            return Task.CompletedTask;
        }
    }
}
