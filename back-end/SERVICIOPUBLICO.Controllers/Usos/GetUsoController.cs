using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Uso;

namespace SERVICIOPUBLICO.Controllers.Usos
{

    [Route("api/[controller]")]
    [ApiController]
    public class GetUsoController
    {
        readonly IGetUsoInPutPort InputPort;
        readonly IGetUsoOutPutPort OutputPort;

        public GetUsoController(IGetUsoInPutPort inputPort, IGetUsoOutPutPort outputPort)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
        }

        [HttpGet("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<UsoDTO> GetUso(long Id)
        {
            await this.InputPort.Handle(Id);
            return ((IPresenter<UsoDTO>)OutputPort).Content;
        }
    }
}
