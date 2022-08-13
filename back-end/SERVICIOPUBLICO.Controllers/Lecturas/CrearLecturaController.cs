using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Lectura;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Lecturas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Controllers.Lecturas
{
    [Route("api/[controller]")]
    [ApiController]
    public class CrearLecturaController
    {
        readonly ICrearLecturaInPutPort inPutPort;
        readonly ICrearLecturaOutPutPort outPutPort;

        public CrearLecturaController(ICrearLecturaInPutPort inPutPort, ICrearLecturaOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<CrearLecturaDTO> CrearLectura(CrearLecturaDTO crearLectura)
        {
            await this.inPutPort.Handle(crearLectura);
            return ((IPresenter<CrearLecturaDTO>)outPutPort).Content;
        }
    }
}
