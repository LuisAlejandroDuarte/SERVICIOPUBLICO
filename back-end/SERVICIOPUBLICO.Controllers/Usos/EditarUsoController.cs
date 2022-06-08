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
    public class EditarUsoController
    {
        readonly IEditarUsoInPutPort inPutPort;
        readonly IEditarUsoOutPutPort outPutPort;

        public EditarUsoController(IEditarUsoInPutPort inPutPort, IEditarUsoOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpPut]
        [Authorize(Roles = "admin,user")]
        public async Task<UsoDTO> EditarUso(UsoDTO uso)
        {
            await this.inPutPort.Handle(uso);
            return ((IPresenter<UsoDTO>)outPutPort).Content;
        }
    }
}
