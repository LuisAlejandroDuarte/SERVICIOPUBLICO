using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.DTOs.Lectura
{
    public class CrearLecturaDTO
    {
        public long SuscriptorId { get; set; }
        public long UsuarioId { get; set; }
        public long LecturaActual { get; set; }
        public long? NoLecturaId { get; set; }
    }
}
