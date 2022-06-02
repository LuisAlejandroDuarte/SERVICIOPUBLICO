
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;

namespace SERVICIOPUBLICO.Controllers.Usuarios
{
    [Route("api/[controller]")]
    [ApiController]
    public class RenewTokenController
    {
        readonly IRenewTokenInPutPort InputPort;
        readonly IRenewTokenOutPutPort OutputPort;

        public RenewTokenController(IRenewTokenInPutPort inputPort, IRenewTokenOutPutPort outputPort)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
        }

        [HttpGet("ReNewToken")]
        public async Task<UsuarioDTO> RenewToken([FromHeader(Name = "x-token")] string token)
        {
            await InputPort.Handle(token);
            return ((IPresenter<UsuarioDTO>)OutputPort).Content;

        }
    }
}
