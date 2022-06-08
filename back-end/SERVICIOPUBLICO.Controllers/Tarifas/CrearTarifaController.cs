using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;

namespace SERVICIOPUBLICO.Controllers.Tarifas
{

    [Route("api/[controller]")]
    [ApiController]
    public class CrearTarifaController
    {
        readonly ICrearTarifaInPutPort inPutPort;
        readonly ICrearTarifaOutPutPort outPutPort;

        public CrearTarifaController(ICrearTarifaInPutPort inPutPort, ICrearTarifaOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<TarifaDTO> CrearTarifa(TarifaDTO tarifa)
        {
            await this.inPutPort.Handle(tarifa);
            return ((IPresenter<TarifaDTO>)outPutPort).Content;
        }
    }
}
