using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Entities.POCOs
{
    public class Periodo
    {
        public long Id { get; set; }
        public int Anno { get; set; }
        public int  Mes { get; set; }
        public bool Estado { get; set; }
    }
}
