
namespace SERVICIOPUBLICO.Entities.POCOs
{
    public class Lectura
    {
        
        public long Id { get; set; }

        public long SuscriptorId { get; set; }
        public Suscriptor? Suscriptor { get; set; }
        //public long OperarioId { get; set; }
        //public Usuario Operario { get; set; }

        public long Lectura1 { get; set; }
        public long Lectura2 { get; set; }
        public long Lectura3 { get; set; }
        public long Lectura4 { get; set; }
        public long Lectura5 { get; set; }
        public long Lectura6 { get; set; }
        public long LecturaActual { get; set; }
        public long LecturaAnterior { get; set; }
        public long LecturaTemporal { get; set; }
        public DateTime FechaLectura { get; set; }

    }
}
