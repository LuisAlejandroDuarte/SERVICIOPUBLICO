using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Controllers.Suscriptores
{
    [Route("api/[controller]")]
    [ApiController]
    public class EliminarSuscriptorController
    {
        readonly IEliminarSuscriptorInPutPort inPutPort;
        readonly IEliminarSuscriptorOutPutPort outPutPort;

        public EliminarSuscriptorController(IEliminarSuscriptorInPutPort inPutPort, IEliminarSuscriptorOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }


        [HttpDelete("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<SuscriptorDTO> CrearSuscriptor(long Id)
        {
            await this.inPutPort.Handle(Id);
            return ((IPresenter<SuscriptorDTO>)outPutPort).Content;
        }
    }
}
