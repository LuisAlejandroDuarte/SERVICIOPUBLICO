using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;

namespace SERVICIOPUBLICO.Controllers.Usuarios
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController
    {
        readonly ILoginInPutPort InputPort;
        readonly ILoginOutPutPort OutputPort;

        public LoginController(ILoginInPutPort inputPort, ILoginOutPutPort outputPort)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
        }

        [HttpPost]
        public async Task<UsuarioDTO> Login(LoginDTO login)
        {
            await InputPort.Handle(login);
            return ((IPresenter<UsuarioDTO>)OutputPort).Content;
        }
    }
}
