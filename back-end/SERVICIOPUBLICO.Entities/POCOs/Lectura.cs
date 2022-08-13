
namespace SERVICIOPUBLICO.Entities.POCOs
{
    public class Lectura
    {
        
        public long Id { get; set; }
        public long SuscriptorId { get; set; }
        public long UsuarioId { get; set; }
        public Suscriptor? Suscriptor { get; set; }        
        public virtual Usuario? Usuario { get; set; }
        public long? Lectura1 { get; set; }
        public long? Lectura2 { get; set; }
        public long? Lectura3 { get; set; }
        public long? Lectura4 { get; set; }
        public long? Lectura5 { get; set; }
        public long? Lectura6 { get; set; }
        public long? LecturaActual { get; set; }
        public long? LecturaAnterior { get; set; }
        public long? LecturaTemporal { get; set; }
        public DateTime? FechaLecturaActual { get; set; }
        public long? NoLecturaId { get; set; }
        public virtual NoLectura? NoLectura { get; set; }


    }
}
