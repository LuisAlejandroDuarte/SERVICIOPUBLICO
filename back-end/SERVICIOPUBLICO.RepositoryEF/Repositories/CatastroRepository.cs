
using AutoMapper;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.Entities.POCOs;
using SERVICIOPUBLICO.RepositoryEF.DataContext;
using System.Linq.Dynamic.Core;
using System.Drawing.Imaging;
using System.Drawing;
using Microsoft.AspNetCore.Http;
using System.Net.Http;

namespace SERVICIOPUBLICO.RepositoryEF.Repositories
{
    public class CatastroRepository : ICatastroRepository
    {
        readonly ServicioPublicoContext context;
        readonly IMapper imapper;

        public CatastroRepository(ServicioPublicoContext context,IMapper imapper)
        {
            this.context = context;
            this.imapper = imapper;
        }

        public CatastroDTO CrearCatastro(IFormCollection datos)
        {
            CatastroDTO catastro = new CatastroDTO();
            string newName="";


            var findCatastro = this.context.Catastros.Where(x => x.Direccion == catastro.Direccion && x.EmpresaId == catastro.EmpresaId).FirstOrDefault();
            if (findCatastro != null)
            {
                throw new Exception($"La dirección {catastro.Direccion} ya existe.");
            }

            findCatastro = this.context.Catastros.Where(x => x.Interno == catastro.Interno && x.EmpresaId == catastro.EmpresaId).FirstOrDefault();
            if (findCatastro != null)
            {
                throw new Exception($"El  número interno {catastro.Interno} ya existe.");
            }



            if (datos.Files.Count()>0)
            {
                var file = datos.Files[0];
                Guid obj = Guid.NewGuid();
                string path = Path.Combine(Directory.GetCurrentDirectory(), "Resources/Images");
                if (!Directory.Exists(path))
                    Directory.CreateDirectory(path);
                newName = obj.ToString() + "." + file.FileName.Split('.').Last();
                string fileNameWithPath = Path.Combine(path, newName);
                using (var stream = new FileStream(fileNameWithPath, FileMode.Create))
                {
                    file.CopyTo(stream);
                }
            }
            
            
            catastro.EmpresaId = Convert.ToInt64(datos["empresaID"]);
            catastro.UsuarioId = Convert.ToInt64(datos["usuarioId"]);
            catastro.Interno = Convert.ToInt64(datos["interno"]);
            catastro.Nombre = datos["nombre"];
            catastro.Direccion = datos["direccion"];
            catastro.UsoId = Convert.ToInt64(datos["usoId"]);
            catastro.Zona = datos["zona"];
            catastro.Ruta = datos["ruta"];
            catastro.Conexion = datos["conexion"];
            catastro.Manzana = datos["manzana"];
            catastro.Predio = datos["predio"];
            catastro.Acueducto = (datos["acueducto"] == "true" ? true : false);
            catastro.Alcantarillado = (datos["alcantarillado"] == "true" ? true : false);
            catastro.Aseo = (datos["aseo"] == "true" ? true : false);
            catastro.TipoConexion = Convert.ToInt16(datos["tipoConexion"]);
            catastro.Caja = Convert.ToInt16(datos["caja"]);
            catastro.Medidor = Convert.ToInt16(datos["medidor"]);
            catastro.Marca = Convert.ToInt16(datos["marca"]);
            catastro.Numero = datos["numero"];
            catastro.Diametro = datos["diametro"];
            catastro.Lectura = Convert.ToInt64(datos["lectura"]);
            catastro.Latitud = datos["latitud"];
            catastro.Longitud = datos["longitud"];
            catastro.Observacion = datos["observacion"];
            catastro.Fachada = newName;

        
            var catastronuevo = this.imapper.Map<Catastro>(catastro);

            context.Add(catastronuevo);

            return this.imapper.Map<CatastroDTO>(catastronuevo);


        }        

        public CatastroDTO EditarCatastro(IFormCollection datos)
        {
        
            string newName = "";
            CatastroDTO catastro = GetMapIForm(datos);            
            Catastro findCatastro = this.context.Catastros.Where(x => x.Id == catastro.Id).FirstOrDefault();

            if (findCatastro==null)
            {
                throw new Exception($"No existe el registro con el Id : {catastro.Id} ");
            }          


            findCatastro = this.context.Catastros.Where(x => x.Direccion == catastro.Direccion && x.EmpresaId == catastro.EmpresaId).FirstOrDefault();
            if (findCatastro != null)
            {
                throw new Exception($"La dirección {catastro.Direccion} ya existe.");
            }

            findCatastro = this.context.Catastros.Where(x => x.Interno == catastro.Interno && x.EmpresaId == catastro.EmpresaId).FirstOrDefault();
            if (findCatastro != null)
            {
                throw new Exception($"El  número interno {catastro.Interno} ya existe.");
            }


            newName = findCatastro.Fachada;

            if (datos.Files.Count() > 0)
            {
                string path = Path.Combine(Directory.GetCurrentDirectory(), "Resources/Images");
                if (!Directory.Exists(path))
                    Directory.CreateDirectory(path);

                if (File.Exists(path + "/" + findCatastro.Fachada))
                {
                    File.Delete(path + "/" + findCatastro.Fachada);
                }

                var file = datos.Files[0];
                Guid obj = Guid.NewGuid();
                
              
                newName = obj.ToString() + "." + file.FileName.Split('.').Last();
                string fileNameWithPath = Path.Combine(path, newName);
                using (var stream = new FileStream(fileNameWithPath, FileMode.Create))
                {
                    file.CopyTo(stream);
                }
            }

      
            catastro.Fachada = newName;

         
            var catastronuevo = this.imapper.Map<Catastro>(catastro);

            context.Update(catastronuevo);

            return this.imapper.Map<CatastroDTO>(catastronuevo);
        }

        public ResultDataTable GetAll(Paginator paginator)
        {
            int totalReg = 0;
            int filterReg = 0;
            int interno = 0;
            
            var catastro = context.Catastros?.Where(x => x.EmpresaId == paginator.idEmpresa);
            totalReg = catastro.Count();
            filterReg = catastro.Count();
            if (!string.IsNullOrWhiteSpace(paginator.searchby))
            {
                int.TryParse(paginator.searchby, out interno);
           

                var filterBy = catastro.Where(x =>
                            x.Interno == interno ||
                            x.Nombre.Contains(paginator.searchby) ||
                            x.Direccion.Contains(paginator.searchby));
                catastro = filterBy;
                filterReg = filterBy.Count();
                totalReg = catastro.Count();
            }

            if (!string.IsNullOrWhiteSpace(paginator.sortColumn?.ToString()) && !string.IsNullOrWhiteSpace(paginator.sortDirection))
            {
                catastro = catastro.OrderBy(paginator.sortColumn.ToString() + " " + paginator.sortDirection);

            }

            catastro = catastro.Skip(paginator.start).Take(paginator.length);

            var modelo = new List<CatastroDTO>();
            foreach (var item in catastro)
            {
                modelo.Add(new CatastroDTO()
                {
                    Id = item.Id,

                    Interno =Convert.ToInt64(item.Interno),
                    Nombre = item.Nombre,
                    Direccion = item.Direccion,
                    
                    //Para mostrar en tabla DataTable.NET                    
                    Edit = ""
                });
            }

            return new ResultDataTable()
            {
                data = modelo,
                draw = paginator.draw.GetValueOrDefault(),
                recordsFiltered = filterReg,
                recordsTotal = totalReg,
            };
        }

        public CatastroDTO GetCatastro(long Id)
        {
            CatastroDTO catastroDTO = null;
            var catastro = this.context.Catastros.Where(x => x.Id == Id).FirstOrDefault();
            if (catastro==null)
            {
                if (catastro == null)
                {
                    throw new Exception($"No existe regiostro con el Id : {Id} ");
                }
            }

            string path = Path.Combine(Directory.GetCurrentDirectory(), "Resources/Images");

            string filePath = path + "/" + catastro.Fachada;
            catastroDTO = this.imapper.Map<CatastroDTO>(catastro);
            if (File.Exists(filePath))
            {
                using (FileStream fileStream = new FileStream(filePath, FileMode.Open))
                {
                    using (var memoryStream = new MemoryStream())
                    {
                         fileStream.CopyTo(memoryStream);                        
                        byte[] byteImage = memoryStream.ToArray();
                        catastroDTO.Imagen = byteImage;
                    }
                }
            }


            return catastroDTO;

        }


        public CatastroDTO GetMapIForm(IFormCollection datos)
        {
            CatastroDTO catastro = new CatastroDTO();
            catastro.Id = Convert.ToInt64(datos["Id"]);
            catastro.Direccion = datos["direccion"];
            catastro.EmpresaId = Convert.ToInt64(datos["empresaID"]);
            catastro.Interno = Convert.ToInt64(datos["interno"]);
            catastro.Id = Convert.ToInt64(datos["Id"]);
            catastro.UsuarioId = Convert.ToInt64(datos["usuarioId"]);
            catastro.Nombre = datos["nombre"];
            catastro.UsoId = Convert.ToInt64(datos["usoId"]);
            catastro.Zona = datos["zona"];
            catastro.Ruta = datos["ruta"];
            catastro.Conexion = datos["conexion"];
            catastro.Manzana = datos["manzana"];
            catastro.Predio = datos["predio"];
            catastro.Acueducto = (datos["acueducto"] == "true" ? true : false);
            catastro.Alcantarillado = (datos["alcantarillado"] == "true" ? true : false);
            catastro.Aseo = (datos["aseo"] == "true" ? true : false);
            catastro.TipoConexion = Convert.ToInt16(datos["tipoConexion"]);
            catastro.Caja = Convert.ToInt16(datos["caja"]);
            catastro.Medidor = Convert.ToInt16(datos["medidor"]);
            catastro.Marca = Convert.ToInt16(datos["marca"]);
            catastro.Numero = datos["numero"];
            catastro.Diametro = datos["diametro"];
            catastro.Lectura = Convert.ToInt64(datos["lectura"]);
            catastro.Latitud = datos["latitud"];
            catastro.Longitud = datos["longitud"];
            catastro.Observacion = datos["observacion"];
            return catastro;
        }

    }
}
