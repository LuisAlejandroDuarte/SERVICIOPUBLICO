using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;

namespace SERVICIOPUBLICO.Controllers.Usuarios
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetAllUsuariosController
    {
        readonly IGetAllUsuariosInputPort InputPort;
        readonly IGetAllUsuariosOutputPort OutputPort;

        readonly IGetUsuariosInputPort InputPortPro;
        readonly IGetUsuariosOutPutPort OutputPortPro;

        readonly IHttpContextAccessor Context;

        public GetAllUsuariosController(IGetAllUsuariosInputPort inputPort, IGetAllUsuariosOutputPort outputPort, IGetUsuariosInputPort inputPortPro, IGetUsuariosOutPutPort outputPortPro, IHttpContextAccessor context)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
            InputPortPro = inputPortPro;
            OutputPortPro = outputPortPro;
            Context = context;
        }

        [HttpGet("{EmpresaId}")]
        [Authorize(Roles = "admin,user")]
        public async Task<IEnumerable<UsuarioDTO>> GetAllUsuarios(long EmpresaId)
        {
            await InputPort.Handle(EmpresaId);
            return ((IPresenter<IEnumerable<UsuarioDTO>>)OutputPort).Content;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<ResultDataTable> GetAllUsuarios()
        {
            Paginator paginador;
            paginador = Paginator.GetPaginador(Context.HttpContext.Request.Form);

            await InputPortPro.Handle(paginador);
            return ((IPresenter<ResultDataTable>)OutputPortPro).Content;
        }

    }
}
