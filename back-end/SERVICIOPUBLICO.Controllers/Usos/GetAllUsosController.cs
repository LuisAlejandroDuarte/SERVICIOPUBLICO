using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Uso;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Controllers.Usos
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetAllUsosController
    {
        readonly IGetAllUsosInPutPort InputPort;
        readonly IGetAllUsosOutPutPort OutputPort;

        public GetAllUsosController(IGetAllUsosInPutPort inputPort, IGetAllUsosOutPutPort outputPort)
        {
            InputPort = inputPort;
            OutputPort = outputPort;
        }

        [HttpGet("{empresaId}")]
        [Authorize(Roles = "admin,user")]
        public async Task<IEnumerable<UsoDTO>> GetAllUsos(long empresaId)
        {
            await this.InputPort.Handle(empresaId);
            return ((IPresenter<IEnumerable<UsoDTO>>)OutputPort).Content;
        }
    }
}
