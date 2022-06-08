using AutoMapper;
using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.Entities.POCOs;
using SERVICIOPUBLICO.RepositoryEF.DataContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.RepositoryEF.Repositories
{
    public class TarifaRepository : ITarifaRepository
    {

        readonly ServicioPublicoContext context;
        readonly IMapper imaper;

        public TarifaRepository(ServicioPublicoContext context, IMapper imaper)
        {
            this.context = context;
            this.imaper = imaper;
        }

        public TarifaDTO Crear(TarifaDTO tarifa)
        {
            var tarifanueva = this.imaper.Map<Tarifa>(tarifa);

            context.Add(tarifanueva);

            return this.imaper.Map<TarifaDTO>(tarifanueva);
        }

        public TarifaDTO Editar(TarifaDTO tarifa)
        {
            var find = context.Tarifas?.FirstOrDefault(x => x.Id == tarifa.Id);

            if (find == null)
            {
                throw new Exception($"La tarifa con Id {tarifa.Id} no existe");
            }

            var taridaeditado=this.imaper.Map<TarifaDTO, Tarifa>(tarifa, find);

            context.Update(taridaeditado);

            return tarifa;


        }

        public TarifaDTO Eliminar(long Id)
        {
            var tarifa = context.Tarifas?.FirstOrDefault(x => x.Id == Id);
            if (tarifa == null)
            {
                throw new Exception($"La tarifa  con Id {Id} no existe");
            }

            context.Remove(tarifa);

            var tarifaDto = this.imaper.Map<TarifaDTO>(tarifa);

            return tarifaDto;
        }

        public TarifaDTO Get(long Id)
        {
            var tarifa = context.Tarifas?.FirstOrDefault(x => x.Id == Id);
            if (tarifa == null)
            {
                throw new Exception($"La tarifa  con Id {Id} no existe");
            }

            var tarifaDto = this.imaper.Map<TarifaDTO>(tarifa);

            return tarifaDto;


        }

        public IEnumerable<TarifaDTO> GetAll(long empresaId)
        {
            var result = (from uso in context.Usos
                          join tarifa in context.Tarifas on uso.Id equals tarifa.UsoId
                          where uso.EmpresaId == empresaId
                          select new TarifaDTO()
                          {
                              Id=tarifa.Id,
                              UsoId =uso.Id,
                              nombreUso=$"{uso.Codigo} {uso.Estrato}"                              
                          });

            return result;

            
        }
    }
}
