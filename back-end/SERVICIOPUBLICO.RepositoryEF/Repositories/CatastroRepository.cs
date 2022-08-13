
using AutoMapper;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.Entities.POCOs;
using SERVICIOPUBLICO.RepositoryEF.DataContext;
using System.Linq.Dynamic.Core;

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

        public CatastroDTO CrearCatastro(CatastroDTO catastro)
        {
            var findCatastro = this.context.Catastros.Where(x=>x.Direccion==catastro.Direccion && x.EmpresaId==catastro.EmpresaId).FirstOrDefault();
            if (findCatastro!=null)
            {
                throw new Exception($"La dirección {catastro.Direccion} ya existe.");
            }

            findCatastro = this.context.Catastros.Where(x => x.Interno == catastro.Interno && x.EmpresaId == catastro.EmpresaId).FirstOrDefault();
            if (findCatastro != null)
            {
                throw new Exception($"El  número interno {catastro.Interno} ya existe.");
            }

            var catastronuevo = this.imapper.Map<Catastro>(catastro);

            context.Add(catastronuevo);

            return this.imapper.Map<CatastroDTO>(catastronuevo);



        }

        public CatastroDTO EditarCatastro(CatastroDTO catastro)
        {
            var findCatastro = this.context.Catastros.Where(x => x.Id == catastro.Id).FirstOrDefault();

            if (findCatastro==null)
            {
                throw new Exception($"No existe regiostro con  {catastro.Id} ");
            }

            if (findCatastro.Direccion!=catastro.Direccion)
            {
                findCatastro = this.context.Catastros.Where(x => x.Direccion == catastro.Direccion && x.EmpresaId == catastro.EmpresaId).FirstOrDefault();
                if (findCatastro!=null)
                {
                    throw new Exception($"La dirección  {catastro.Direccion} ya existe");
                }
            }

            if (findCatastro.Interno != catastro.Interno)
            {
                findCatastro = this.context.Catastros.Where(x => x.Interno == catastro.Interno && x.EmpresaId == catastro.EmpresaId).FirstOrDefault();
                if (findCatastro != null)
                {
                    throw new Exception($"El número interno  {catastro.Interno} ya existe");
                }
            }

            var catastroeditado = this.imapper.Map<Catastro>(catastro);
            context.Update(catastroeditado);


            return this.imapper.Map<CatastroDTO>(catastroeditado);

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
    }
}
