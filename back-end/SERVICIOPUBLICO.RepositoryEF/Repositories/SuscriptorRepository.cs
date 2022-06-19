
using AutoMapper;
using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.Entities.POCOs;
using SERVICIOPUBLICO.RepositoryEF.DataContext;
using System.Linq.Dynamic.Core;

namespace SERVICIOPUBLICO.RepositoryEF.Repositories
{
    public class SuscriptorRepository : ISuscriptorRepository
    {

        readonly ServicioPublicoContext context;
        readonly IMapper imapper;

        public SuscriptorRepository(ServicioPublicoContext context, IMapper imapper)
        {
            this.context = context;
            this.imapper = imapper;
        }

        public SuscriptorDTO Crear(SuscriptorDTO suscriptor)
        {
            var find = context.Suscriptores.Where(x => x.Codigo == suscriptor.Codigo).FirstOrDefault();
            if (find!=null)
            {
                throw new Exception($"El suscriptor con código {suscriptor.Codigo} ys existe");
            }
            suscriptor.Sistema = ((context.Suscriptores?.Max(x => x.Sistema)) == null ? 1: context.Suscriptores?.Max(x => x.Sistema)+1).Value;                        

            var suscriptornuevo = this.imapper.Map<Suscriptor>(suscriptor);

            context.Add(suscriptornuevo);

            return this.imapper.Map<SuscriptorDTO>(suscriptornuevo);
        }

        public SuscriptorDTO Editar(SuscriptorDTO suscriptor)
        {
            var find = context.Suscriptores.FirstOrDefault(x => x.Id == suscriptor.Id);

            if (find == null)
            {
                throw new Exception($"El suscriptor con Id {suscriptor.Id} no existe");
            }

            if (find.Codigo!=suscriptor.Codigo)
            {
                var find_codigo= context.Suscriptores.FirstOrDefault(x=>x.Codigo==suscriptor.Codigo);
                if (find_codigo!=null)
                {
                    throw new Exception($"El código ya existe {suscriptor.Codigo} ");
                }
            }


            var suscriptoreditado = this.imapper.Map<SuscriptorDTO, Suscriptor>(suscriptor, find);

            context.Update(suscriptoreditado);

            return suscriptor;
        }

        public SuscriptorDTO Eliminar(long Id)
        {
            var suscriptor = context.Suscriptores?.FirstOrDefault(x => x.Id == Id);
            if (suscriptor == null)
            {
                throw new Exception($"El suscriptor  con Id {Id} no existe");
            }

            context.Remove(suscriptor);

            var suscriptorDto = this.imapper.Map<SuscriptorDTO>(suscriptor);

            return suscriptorDto;
        }

        public SuscriptorDTO Get(long Id)
        {
            var suscriptor = context.Suscriptores?.FirstOrDefault(x => x.Id == Id);
            if (suscriptor == null)
            {
                throw new Exception($"El suscriptor  con Id {Id} no existe");
            }

            var suscriptorDto = this.imapper.Map<SuscriptorDTO>(suscriptor);

            return suscriptorDto;
        }

        public ResultDataTable GetAll(Paginator paginator)
        {
            int totalReg = 0;
            int filterReg = 0;

            var suscriptores = context.Suscriptores?.Where(x => x.Uso.EmpresaId==paginator.idEmpresa);
            totalReg = suscriptores.Count();
            filterReg = suscriptores.Count();
            if (!string.IsNullOrWhiteSpace(paginator.searchby))
            {
                var filterBy = suscriptores.Where(x =>
                               x.Codigo.Contains(paginator.searchby) ||
                               x.Nombre.Contains(paginator.searchby) ||
                               x.Direccion.Contains(paginator.searchby) ||
                               x.Telefono.Contains(paginator.searchby));

                suscriptores = filterBy;
                filterReg = filterBy.Count();
                totalReg = suscriptores.Count();
            }

            if (!string.IsNullOrWhiteSpace(paginator.sortColumn?.ToString()) && !string.IsNullOrWhiteSpace(paginator.sortDirection))
            {
                suscriptores= suscriptores.OrderBy(paginator.sortColumn.ToString() + " " + paginator.sortDirection);

            }

            suscriptores = suscriptores.Skip(paginator.start).Take(paginator.length);

            var modelo = new List<SuscriptorDTO>();
            foreach (var item in suscriptores)
            {
                modelo.Add(new SuscriptorDTO()
                {
                    Id = item.Id,
                    
                    Codigo = item.Codigo,
                    Nombre = item.Nombre,                    
                    Direccion = item.Direccion,
                    Telefono = item.Telefono,
                    Bloqueo = item.Bloqueo,
                   
                    //Para mostrar en tabla DataTable.NET
                    Bloqueado = (item.Bloqueo == true) ? "Si" : "No",
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
