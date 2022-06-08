using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCases.Usos.Get
{
    public class GetUsoInteractor : IGetUsoInPutPort
    {

        readonly IUsoRepository repositrory;
        readonly IGetUsoOutPutPort outPutPort;

        public GetUsoInteractor(IUsoRepository repositrory, IGetUsoOutPutPort outPutPort)
        {
            this.repositrory = repositrory;
            this.outPutPort = outPutPort;
        }

        public Task Handle(long Id)
        {
            var usodto = this.repositrory.Get(Id);
            this.outPutPort.Handle(usodto);
            return Task.CompletedTask;

        }
    }
}
