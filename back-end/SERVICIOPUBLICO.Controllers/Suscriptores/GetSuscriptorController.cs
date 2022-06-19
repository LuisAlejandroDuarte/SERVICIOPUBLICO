using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.Controllers.Suscriptores
{

    [Route("api/[controller]")]
    [ApiController]
    public class GetSuscriptorController
    {
        readonly IGetSuscriptorInPutPort inPutPort;
        readonly IGetSuscriptorOutPutPort outPutPort;

        public GetSuscriptorController(IGetSuscriptorInPutPort inPutPort, IGetSuscriptorOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpGet("{Id}")]
        [Authorize(Roles = "admin,user")]
        public async Task<SuscriptorDTO> GetSuscriptor(long Id)
        {
            await this.inPutPort.Handle(Id);
            return ((IPresenter<SuscriptorDTO>)outPutPort).Content;
        }
    }
}
