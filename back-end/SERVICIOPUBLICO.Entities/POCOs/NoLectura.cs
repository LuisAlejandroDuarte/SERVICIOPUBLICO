using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Entities.POCOs
{
    public class NoLectura
    {
        public long Id { get; set; }
        public long EmpresaId { get; set; }
        public virtual Empresa? Empresa { get; set; }
        public string Nombre { get; set; } = String.Empty;
        
    }
}
