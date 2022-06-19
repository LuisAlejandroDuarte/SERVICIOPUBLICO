using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.DTOs.Lectura
{
    public class GetLecturasDTO
    {
        public long Id { get; set; }
        public long Sistema { get; set; }
        public string Codigo { get; set; } = string.Empty;
        public string Nombre { get; set; } = string.Empty;
        public string Direccion { get; set; } = string.Empty;


        public long LecturaAnterior { get; set; }
        public long LecturaActual { get; set; }
        public long? NolecturaId { get; set; }
    }
}
