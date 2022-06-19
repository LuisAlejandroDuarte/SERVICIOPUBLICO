using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;


namespace SERVICIOPUBLICO.Controllers.Suscriptores
{
    [Route("api/[controller]")]
    [ApiController]
    public class CrearSuscriptorController
    {
        readonly ICrearSuscriptorInPutPort inPutPort;
        readonly ICrearSuscriptorOutPutPort outPutPort;

        public CrearSuscriptorController(ICrearSuscriptorInPutPort inPutPort, ICrearSuscriptorOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }


        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<SuscriptorDTO> CrearSuscriptor(SuscriptorDTO suscriptor)
        {
            await this.inPutPort.Handle(suscriptor);
            return ((IPresenter<SuscriptorDTO>)outPutPort).Content;
        }
    }
}
