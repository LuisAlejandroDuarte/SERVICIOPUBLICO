using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Uso;

namespace SERVICIOPUBLICO.Controllers.Usos
{
    [Route("api/[controller]")]
    [ApiController]
    public class CrearUsoController
    {
        readonly ICrearUsoInPutPort inPutPort;
        readonly ICrearUsoOutPutPort outPutPort;

        public CrearUsoController(ICrearUsoInPutPort inPutPort, ICrearUsoOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]        
        public async Task<UsoDTO> CrearUso(UsoDTO uso)
        {
            await this.inPutPort.Handle(uso);
            return ((IPresenter<UsoDTO>)outPutPort).Content;
        }
    }
}
