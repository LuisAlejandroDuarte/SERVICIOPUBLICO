using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;

namespace SERVICIOPUBLICO.Controllers.Catastro
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetAllCatastroController: ControllerBase
    {
        readonly IGetAllCatastroInPutPort inPutPort;
        readonly IGetAllCatastroOutPutPort outPutPort;
        readonly IHttpContextAccessor Context;

        public GetAllCatastroController(IGetAllCatastroInPutPort inPutPort, IGetAllCatastroOutPutPort outPutPort, IHttpContextAccessor context)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
            Context = context;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<ResultDataTable> GetAllCatastro()
        {
            Paginator paginador;
            paginador = Paginator.GetPaginador(Context.HttpContext.Request.Form);

            await inPutPort.Handle(paginador);
            return ((IPresenter<ResultDataTable>)outPutPort).Content;
        }
    }
}
