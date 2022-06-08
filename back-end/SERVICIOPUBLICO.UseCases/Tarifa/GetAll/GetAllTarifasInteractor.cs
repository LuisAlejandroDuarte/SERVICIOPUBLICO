using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCases.Tarifa.GetAll
{
    public class GetAllTarifasInteractor:IGetAllTarifasInPutPort
    {
        readonly ITarifaRepository repository;
        readonly IGetAllTarifasOutPutPort outPutPort;

        public GetAllTarifasInteractor(ITarifaRepository repository, IGetAllTarifasOutPutPort outPutPort)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
        }

        public Task Handle(long empresaId)
        {
            var tarifas = this.repository.GetAll(empresaId);
            this.outPutPort.Handle(tarifas);
            return Task.CompletedTask;
        }
    }
}
