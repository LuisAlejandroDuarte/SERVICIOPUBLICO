using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Controllers.Usos
{
    [Route("api/[controller]")]
    [ApiController]
    public class EliminarUsoController
    {
        readonly IEliminarUsoInPutPort inPutPort;
        readonly IEliminarUsoOutPutPort outPutPort;

        public EliminarUsoController(IEliminarUsoInPutPort inPutPort, IEliminarUsoOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpDelete("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<UsoDTO> EliminarUso(long Id)
        {
            await this.inPutPort.Handle(Id);
            return ((IPresenter<UsoDTO>)outPutPort).Content;
        }
    }
}
