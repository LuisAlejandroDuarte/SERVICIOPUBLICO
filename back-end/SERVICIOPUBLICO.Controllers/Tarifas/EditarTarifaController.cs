using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;


namespace SERVICIOPUBLICO.Controllers.Tarifas
{

    [Route("api/[controller]")]
    [ApiController]
    public class EditarTarifaController
    {
        readonly IEditarTarifaInPutPort inPutPort;
        readonly IEditarTarifaOutPutPort outPutPort;

        public EditarTarifaController(IEditarTarifaInPutPort inPutPort, IEditarTarifaOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpPut]
        [Authorize(Roles = "admin,user")]
        public async Task<TarifaDTO> EditarTarifa(TarifaDTO tarifa)
        {
            await this.inPutPort.Handle(tarifa);
            return ((IPresenter<TarifaDTO>)outPutPort).Content;
        }
    }
}
