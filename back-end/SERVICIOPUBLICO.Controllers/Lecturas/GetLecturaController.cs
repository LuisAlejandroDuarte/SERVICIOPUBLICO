using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Lectura;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Lecturas;


namespace SERVICIOPUBLICO.Controllers.Lecturas
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetLecturaController
    {

        readonly IGetLecturaInPutPort inPutPort;
        readonly IGetLecturaOutPutPort outPutPort;

        public GetLecturaController(IGetLecturaInPutPort inPutPort, IGetLecturaOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpGet]
        [Authorize(Roles = "admin,user")]
        public async Task<List<GetLecturasDTO>> GetLecturas(string data)
        {
           await  this.inPutPort.Handle(data); 
           return ((IPresenter<List<GetLecturasDTO>>)outPutPort).Content;
        }
    }
}
