using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;


namespace SERVICIOPUBLICO.Controllers.Tarifas
{

    [Route("api/[controller]")]
    [ApiController]
    public class EliminarTarifaController
    {
        readonly IEliminarTarifaInPutPort inPutPort;
        readonly IEliminarTarifaOutPutPort outPutPort;

        public EliminarTarifaController(IEliminarTarifaInPutPort inPutPort, IEliminarTarifaOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpDelete("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<TarifaDTO> EliminarTarifa(long Id)
        {
            await this.inPutPort.Handle(Id);
            return ((IPresenter<TarifaDTO>)outPutPort).Content;
        }
    }
}
