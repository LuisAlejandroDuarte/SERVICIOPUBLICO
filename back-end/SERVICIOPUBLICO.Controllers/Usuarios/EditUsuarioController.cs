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
    public class EditUsuarioController
    {
        readonly IEditUsuarioInPutPort InputPort;
        readonly IEditUsuarioOutPutPort OutputPort;

        public EditUsuarioController(IEditUsuarioInPutPort inputPort, IEditUsuarioOutPutPort outputPort)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
        }


        [HttpPut]
        [Authorize(Roles = "admin,user")]
        public async Task<UsuarioDTO> EditUsuario(UsuarioDTO usuario)
        {
            await this.InputPort.Handle(usuario);
            return ((IPresenter<UsuarioDTO>)OutputPort).Content;

        }
    }
}
