using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.Presenter;
using SERVICIOPUBLICO.UseCasesPorts.Catastro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace SERVICIOPUBLICO.Controllers.Catastro
{
    [Route("api/[controller]")]
    [ApiController]
    public class CrearCatastroController : ControllerBase
    {
        readonly ICrearCatastroInPutPort inPutPort;
        readonly ICrearCatastroOutPutPort outPutPort;
        readonly IHttpContextAccessor Context;

        public CrearCatastroController(ICrearCatastroInPutPort inPutPort, ICrearCatastroOutPutPort outPutPort, IHttpContextAccessor context)
        {
            this.inPutPort = inPutPort;
            this.outPutPort = outPutPort;
            Context = context;
        }




        [HttpPost]
        [Authorize(Roles = "admin,user")]
        public async Task<CatastroDTO> CrearCatastro([FromForm] object data)
        {
            CatastroDTO catastro = new CatastroDTO();
            var file = Context.HttpContext.Request.Form.Files[0];
            Guid obj = Guid.NewGuid();            
            string path = Path.Combine(Directory.GetCurrentDirectory(), "Resources/Images");
            if (!Directory.Exists(path))
                Directory.CreateDirectory(path);
            var newName = obj.ToString() + "." + file.FileName.Split('.').Last();
            string fileNameWithPath = Path.Combine(path, newName);
            using (var stream = new FileStream(fileNameWithPath, FileMode.Create))
            {
                await file.CopyToAsync(stream);
            }
            

            IFormCollection  datos = HttpContext.Request.Form; //datos["id"]
            catastro.EmpresaId =Convert.ToInt64(datos["empresaID"]);
            catastro.Interno= Convert.ToInt64(datos["interno"]);
            catastro.Nombre = datos["nombre"];
            catastro.Direccion= datos["direccion"];
            catastro.UsoId = Convert.ToInt64(datos["usoId"]);
            catastro.Zona =  datos["zona"];
            catastro.Ruta = datos["ruta"];
            catastro.Conexion = datos["conexion"];
            catastro.Manzana = datos["manzana"];
            catastro.Predio= datos["predio"];
            catastro.Acueducto = (datos["acueducto"]=="true"? true:false);
            catastro.Alcantarillado = (datos["alcantarillado"] == "true" ? true : false);
            catastro.Aseo = (datos["aseo"] == "true" ? true : false);
            catastro.TipoConexion = Convert.ToInt16(datos["tipoConexion"]);
            catastro.Caja = Convert.ToInt16(datos["caja"]);
            catastro.Medidor = Convert.ToInt16(datos["medidor"]);
            catastro.Marca = Convert.ToInt16(datos["marca"]);
            catastro.Numero = datos["numero"];
            catastro.Diametro =Convert.ToDouble(datos["diametro"]);
            catastro.Lectura = Convert.ToInt64(datos["lectura"]);
            catastro.Latitud = datos["latitud"];
            catastro.Longitud = datos["longitud"];
            catastro.Observacion = datos["observacion"];
            catastro.Fachada = newName;

            await this.inPutPort.Handle(catastro);
            return ((IPresenter<CatastroDTO>)outPutPort).Content;
        }

       

    }
}
