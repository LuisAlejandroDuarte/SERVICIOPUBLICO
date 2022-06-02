using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Controllers.Usuarios
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetUsuarioController
    {
        readonly IGetUsuarioInPutPort InputPort;
        readonly IGetUsuarioOutPutPort OutputPort;

        public GetUsuarioController(IGetUsuarioInPutPort inputPort, IGetUsuarioOutPutPort outputPort)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
        }


        [HttpGet("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<UsuarioDTO> CrearUsuario(long Id)
        {
            await this.InputPort.Handle(Id);
            return ((IPresenter<UsuarioDTO>)OutputPort).Content;

        }
    }
}
