using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.BaseEncuesta;

namespace SERVICIOPUBLICO.Controllers.BaseEncuesta
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetAllBaseEncuestaController
    {
        readonly IGetAllBaseEncuestaInPutPort inPutPort;
        readonly IGetAllBaseEncuestaOutPutPort outPutPort;
        readonly IHttpContextAccessor Context;

        public GetAllBaseEncuestaController(IGetAllBaseEncuestaInPutPort inPutPort, IGetAllBaseEncuestaOutPutPort outPutPort, IHttpContextAccessor context)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
            Context = context;
        }


        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<ResultDataTable> GetAllBaseEncuesta()
        {
            Paginator paginador;
            paginador = Paginator.GetPaginador(Context.HttpContext.Request.Form);

            await inPutPort.Handle(paginador);
            return ((IPresenter<ResultDataTable>)outPutPort).Content;
        }
    }
}
