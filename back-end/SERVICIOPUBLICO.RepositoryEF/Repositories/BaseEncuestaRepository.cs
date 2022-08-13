using AutoMapper;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.BaseEncuesta;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.RepositoryEF.DataContext;
using System.Linq.Dynamic.Core;

namespace SERVICIOPUBLICO.RepositoryEF.Repositories
{
    public class BaseEncuestaRepository:IBaseEncuestaRepository
    {
        readonly ServicioPublicoContext context;
        readonly IMapper imapper;

        public BaseEncuestaRepository(ServicioPublicoContext context, IMapper imapper)
        {
            this.context = context;
            this.imapper = imapper;
        }

        public BaseEncuestaDTO Get(long Id)
        {
            var result = context.BaseEncuestas.Where(x => (x.Id==Id)).FirstOrDefault();

            if (result==null)
            {
                throw new Exception($"No es posible encontrar el Id :  {Id}");
            }

            return this.imapper.Map<BaseEncuestaDTO>(result);
        }

        public ResultDataTable GetAll(Paginator paginator)
        {
            int totalReg = 0;
            int filterReg = 0;
            int interno = 0;

            var baseEncuesta = context.BaseEncuestas?.Where(x => x.EmpresaId == paginator.idEmpresa);
            totalReg = baseEncuesta.Count();
            filterReg = baseEncuesta.Count();
            if (!string.IsNullOrWhiteSpace(paginator.searchby))
            {
                int.TryParse(paginator.searchby, out interno);


                var filterBy = baseEncuesta.Where(x =>
                            x.Interno == interno ||
                            x.Nombre.Contains(paginator.searchby) ||
                            x.Direccion.Contains(paginator.searchby));
                baseEncuesta = filterBy;
                filterReg = filterBy.Count();
                totalReg = baseEncuesta.Count();
            }

            if (!string.IsNullOrWhiteSpace(paginator.sortColumn?.ToString()) && !string.IsNullOrWhiteSpace(paginator.sortDirection))
            {
                baseEncuesta = baseEncuesta.OrderBy(paginator.sortColumn.ToString() + " " + paginator.sortDirection);

            }

            baseEncuesta = baseEncuesta.Skip(paginator.start).Take(paginator.length);

            var modelo = new List<BaseEncuestaDTO>();
            foreach (var item in baseEncuesta)
            {
                modelo.Add(new BaseEncuestaDTO()
                {
                    Id = item.Id,

                    Interno = Convert.ToInt64(item.Interno),
                    Nombre = item.Nombre,
                    Direccion = item.Direccion,   
                    Acueducto = item.Acueducto,
                    Alcantarillado=item.Alcantarillado,
                    Aseo=item.Aseo,
                    UsoId=item.UsoId,
                    Edit=""
                    
                });
            }

            return new ResultDataTable()
            {
                data = modelo,
                draw = paginator.draw.GetValueOrDefault(),
                recordsFiltered = filterReg,
                recordsTotal = totalReg
            };
        }
    }
}
