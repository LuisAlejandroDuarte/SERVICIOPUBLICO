using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;

namespace SERVICIOPUBLICO.Controllers.Tarifas
{


    [Route("api/[controller]")]
    [ApiController]
    public class GetTarifaController
    {
        readonly IGetTarifaInPutPort inPutPort;
        readonly IGetTarifaOutPutPort outPutPort;

        public GetTarifaController(IGetTarifaInPutPort inPutPort, IGetTarifaOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpGet("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<TarifaDTO> GetTarifa(long Id)
        {
            await this.inPutPort.Handle(Id);
            return ((IPresenter<TarifaDTO>)outPutPort).Content;
        }
    }
}
