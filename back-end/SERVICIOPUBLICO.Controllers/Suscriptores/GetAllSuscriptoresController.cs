using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Controllers.Suscriptores
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetAllSuscriptoresController
    {

        readonly IGetAllSuscriptoresInPutPort inPutPort;
        readonly IGetAllSuscriptoresOutPutPort outPutPort;
        readonly IHttpContextAccessor Context;

        public GetAllSuscriptoresController(IGetAllSuscriptoresInPutPort inPutPort, IGetAllSuscriptoresOutPutPort outPutPort, IHttpContextAccessor context)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
            Context = context;
        }

        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<ResultDataTable> GetAllSuscriptores()
        {
            Paginator paginador;
            paginador = Paginator.GetPaginador(Context.HttpContext.Request.Form);

            await inPutPort.Handle(paginador);
            return ((IPresenter<ResultDataTable>)outPutPort).Content;
        }
    }
}
