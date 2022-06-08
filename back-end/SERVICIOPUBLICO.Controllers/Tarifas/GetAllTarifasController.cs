using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Tarifa;

namespace SERVICIOPUBLICO.Controllers.Tarifas
{

    [Route("api/[controller]")]
    [ApiController]
    public class GetAllTarifasController
    {
        readonly IGetAllTarifasInPutPort inPutPort;
        readonly IGetAllTarifasOutPutPort outPutPort;
        

        public GetAllTarifasController(IGetAllTarifasInPutPort inPutPort, IGetAllTarifasOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpGet("{empresaId}")]
        [Authorize(Roles = "admin,user")]
        public async Task<IEnumerable<TarifaDTO>> GetAllTarifas(long empresaId)
        {
            await this.inPutPort.Handle(empresaId);
            return ((IPresenter<IEnumerable<TarifaDTO>>)outPutPort).Content;
        }
    }
}
