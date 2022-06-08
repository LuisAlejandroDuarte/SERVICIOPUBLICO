using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCases.Usos.Eliminar
{
    public class EliminarUsoInteractor:IEliminarUsoInPutPort
    {
        readonly IUsoRepository repositrory;
        readonly IEliminarUsoOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public EliminarUsoInteractor(IUsoRepository repositrory, IEliminarUsoOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repositrory = repositrory;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(long Id)
        {
            var uso = this.repositrory.Eliminar(Id);
            await this.unitOfWork.SaveChanges();
            await this.outPutPort.Handle(uso);
            

        }
    }
}
