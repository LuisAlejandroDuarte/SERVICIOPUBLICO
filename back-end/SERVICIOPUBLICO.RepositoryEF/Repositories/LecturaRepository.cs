using AutoMapper;
using SERVICIOPUBLICO.DTOs.Lectura;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.Entities.POCOs;
using SERVICIOPUBLICO.RepositoryEF.DataContext;

namespace SERVICIOPUBLICO.RepositoryEF.Repositories
{
    public class LecturaRepository:ILecturaRepository
    {
        readonly ServicioPublicoContext context;
        readonly IMapper imapper;

        public LecturaRepository(ServicioPublicoContext context, IMapper imapper)
        {
            this.context = context;
            this.imapper = imapper;
        }

        public CrearLecturaDTO CrearLectura(CrearLecturaDTO crearLectura)
        {
            var lectura = context.Lecturas.FirstOrDefault(x=>x.SuscriptorId==crearLectura.SuscriptorId);
            if (lectura==null)
            {
                var lecturaNueva = new Lectura();
                lecturaNueva.SuscriptorId = crearLectura.SuscriptorId;
                lecturaNueva.LecturaActual = crearLectura.LecturaActual;
                lecturaNueva.UsuarioId = crearLectura.UsuarioId;
                lecturaNueva.NoLecturaId = crearLectura.NoLecturaId;
                lecturaNueva.FechaLecturaActual = new DateTime();
                context.Add(lecturaNueva);
                return crearLectura;
            }
            lectura.LecturaActual = crearLectura.LecturaActual;
            lectura.UsuarioId = crearLectura.UsuarioId;
            lectura.NoLecturaId = crearLectura.NoLecturaId;
            lectura.FechaLecturaActual = new DateTime();
            context.Update(lectura);

            return crearLectura;
        }


        public List<GetLecturasDTO> GetLecturas(RequestLectura lectura)
        {
           char[] delimitador= { '-' };
            List<GetLecturasDTO> result = new List<GetLecturasDTO>();


            var result1 = from s in context.Suscriptores
                     join u in context.Usos on s.UsoId equals u.Id
                     join l in context.Lecturas on s.Id equals l.SuscriptorId
                     where s.Codigo.Split(delimitador)[0] == lectura.Zona &&
                           s.Codigo.Split(delimitador)[1] == lectura.Ruta &&
                           u.EmpresaId == lectura.EmpresaId
                     select new  GetLecturasDTO()
                     {
                         Codigo = s.Codigo,
                         Direccion = s.Direccion,
                         Nombre = s.Nombre,
                         Sistema = s.Sistema,
                         LecturaActual = l.LecturaActual,
                         LecturaAnterior = l.LecturaActual,
                         NolecturaId = l.NoLecturaId
                     };

            foreach(var item in result1)
            {
                result.Add(new GetLecturasDTO
                {
                    Codigo = item.Codigo,
                    Direccion = item.Direccion,
                    Nombre = item.Nombre,
                    Sistema = item.Sistema,
                    LecturaActual = item.LecturaActual,
                    LecturaAnterior = item.LecturaActual,
                    NolecturaId = item.NolecturaId
                });                                                                
            };
                     

            return result;
        }
    }
}
