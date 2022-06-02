

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;

namespace SERVICIOPUBLICO.Controllers.Usuarios
{
    [Route("api/[controller]")]
    [ApiController]
    public class CrearUsuarioController
    {
        readonly ICrearUsuarioInPutPort InputPort;
        readonly ICrearUsuarioOutPutPort OutputPort;

        public CrearUsuarioController(ICrearUsuarioInPutPort inputPort, ICrearUsuarioOutPutPort outputPort)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<UsuarioDTO>  CrearUsuario(UsuarioDTO usuario)
        {
            await this.InputPort.Handle(usuario);
            return ((IPresenter<UsuarioDTO>)OutputPort).Content;

        }
    }
}
