﻿

namespace SERVICIOPUBLICO.Entities.POCOs
{
    public class Uso
    {
        public long Id { get; set; }
        public int Codigo { get; set; }
        public int Estrato { get; set; }
        public string? Descripcion { get; set; }    
        public ICollection<Suscriptor>? Suscriptores { get; set; }
    }
}
