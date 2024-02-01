

namespace SERVICIOPUBLICO.Entities.POCOs
{
    public class BaseEncuesta
    {
        public long Id { get; set; }
        public virtual Empresa? Empresa { get; set; }
        public long? EmpresaId { get; set; }
        public long Interno { get; set; }
        public string Nombre { get; set; } = string.Empty;
        public string Direccion { get; set; } = string.Empty;
        public long UsoId { get; set; }
        public virtual Uso? Uso { get; set; }
        public bool Acueducto { get; set; }
        public bool Alcantarillado { get; set; }
        public bool Aseo { get; set; }
    }
}
