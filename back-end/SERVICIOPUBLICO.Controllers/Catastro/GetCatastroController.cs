

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
    public class GetCatastroController
    {
        readonly IGetCatastroInPutPort inPutPort;
        readonly IGetCatastroOutPutPort outPutPort;
        readonly IHttpContextAccessor Context;

        public GetCatastroController(IGetCatastroInPutPort inPutPort, IGetCatastroOutPutPort outPutPort, IHttpContextAccessor context)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
            Context = context;
        }

        [HttpGet("{id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<CatastroDTO> GetCatastro(int id)
        {           
            await this.inPutPort.Handle(id);            
            return ((IPresenter<CatastroDTO>)outPutPort).Content; 
        }

    }
}
