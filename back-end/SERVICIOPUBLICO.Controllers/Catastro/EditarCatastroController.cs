using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;


namespace SERVICIOPUBLICO.Controllers.Catastro
{
    [Route("api/[controller]")]
    [ApiController]
    public class EditarCatastroController: ControllerBase
    {
        readonly IEditarCatastroInPutPort inPutPort;
        readonly IEditarCatastroOutPutPort outPutPort;
        readonly IHttpContextAccessor Context;

        public EditarCatastroController(IEditarCatastroInPutPort inPutPort, IEditarCatastroOutPutPort outPutPort, IHttpContextAccessor context)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
            Context = context;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<CatastroDTO> CrearCatastro([FromForm] object data)
        {


            await this.inPutPort.Handle(Context.HttpContext.Request.Form);
            return ((IPresenter<CatastroDTO>)outPutPort).Content;
        }
    }
}
