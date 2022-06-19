
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Suscriptor;

namespace SERVICIOPUBLICO.Controllers.Suscriptores
{

    [Route("api/[controller]")]
    [ApiController]
    public class EditarSuscriptorController
    {
        readonly IEditarSuscriptorInPutPort inPutPort;
        readonly IEditarSuscriptorOutPutPort outPutPort;

        public EditarSuscriptorController(IEditarSuscriptorInPutPort inPutPort, IEditarSuscriptorOutPutPort outPutPort)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
        }

        [HttpPut]
        [Authorize(Roles = "admin,user")]
        public async Task<SuscriptorDTO> EditarSuscriptor(SuscriptorDTO suscriptor)
        {
            await this.inPutPort.Handle(suscriptor);
            return ((IPresenter<SuscriptorDTO>)outPutPort).Content;
        }

    }
}
