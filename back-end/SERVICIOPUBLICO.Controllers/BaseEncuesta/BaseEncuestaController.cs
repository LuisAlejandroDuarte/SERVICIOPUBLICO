using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.BaseEncuesta;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta;

namespace SERVICIOPUBLICO.Controllers.BaseEncuesta
{
    [Route("api/[controller]")]
    [ApiController]
    public class BaseEncuestaController
    {
        readonly IBuscarBaseEncuestaInPutPort inPutPort;
        readonly IBuscarBaseEncuestaOutPutPort outPutPort;

        public BaseEncuestaController(IBuscarBaseEncuestaInPutPort inPutPort, IBuscarBaseEncuestaOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpGet("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<BaseEncuestaDTO> Get(long Id)
        {
                        
            await this.inPutPort.Handle(Id);
            return ((IPresenter<BaseEncuestaDTO>)outPutPort).Content;
        }

    }
}
