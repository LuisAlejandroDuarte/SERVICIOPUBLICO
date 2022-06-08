using AutoMapper;
using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.Entities.POCOs;
using SERVICIOPUBLICO.RepositoryEF.DataContext;

namespace SERVICIOPUBLICO.RepositoryEF.Repositories
{
    public class UsoRepository : IUsoRepository
    {
        readonly ServicioPublicoContext Context;
        private readonly IMapper imapper;

        public UsoRepository(ServicioPublicoContext context, IMapper imapper)
        {
            Context = context;
            this.imapper = imapper;
        }

        public UsoDTO Crear(UsoDTO uso)
        {
            var usonuevo = this.imapper.Map<Uso>(uso);

            Context.Add(usonuevo);

            return this.imapper.Map<UsoDTO>(usonuevo);
        }

        public UsoDTO Editar(UsoDTO uso)
        {
            var Uso = Context.Usos?.FirstOrDefault(x => x.Id == uso.Id);
            if (Uso== null)
            {
                throw new Exception($"El uso con Id {uso.Id} no existe");
            }

            Context.ChangeTracker.Clear();

            Uso.Id =uso.Id;
            Uso.Codigo = uso.Codigo;
            Uso.Descripcion = uso.Descripcion;
            Uso.Estrato = uso.Estrato;
            Uso.EmpresaId = uso.EmpresaId;

            Context.Update(Uso);

            return uso;
            
        }

        public UsoDTO Eliminar(long Id)
        {
            var Uso = Context.Usos?.FirstOrDefault(x => x.Id == Id);
            if (Uso == null)
            {
                throw new Exception($"El uso con Id {Id} no existe");
            }

            Context.Remove(Uso);

            var usoDto = this.imapper.Map<UsoDTO>(Uso);

            return usoDto;


        }

        public UsoDTO Get(long Id)
        {
            var Uso = Context.Usos?.FirstOrDefault(x => x.Id == Id);
            if (Uso == null)
            {
                throw new Exception($"El uso con Id {Id} no existe");
            }
            var usoDto = this.imapper.Map<UsoDTO>(Uso);

            return usoDto;

        }

        public IEnumerable<UsoDTO> GetAll(long empresaId)
        {
            var result= (from x in Context.Usos where x.EmpresaId==empresaId select x ).ToList();

            return this.imapper.Map<IEnumerable<UsoDTO>>(result);
        }
    }
}
