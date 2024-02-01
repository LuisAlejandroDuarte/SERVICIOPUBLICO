using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.Entities.POCOs
{
    public class Catastro
    {
        public long Id { get; set; }

        public virtual Empresa? Empresa { get; set; }

        public virtual Usuario? Usuario { get; set; }

        public long? UsuarioId { get; set; }

        public long? EmpresaId { get; set; }
        public long Interno { get; set; }
        public string Nombre { get; set; } = string.Empty;
        public string Direccion { get; set; } = string.Empty;

        public long UsoId { get; set; }
        public virtual Uso? Uso { get; set; }
        

        public string Zona { get; set; } = string.Empty;
        public string Ruta { get; set; } = string.Empty;
        public string Conexion { get; set; } = string.Empty;
        public string Manzana { get; set; } = string.Empty;
        public string Predio { get; set; } = string.Empty;

        public bool Acueducto { get; set; }
        public bool Alcantarillado { get; set; }
        public bool Aseo { get; set; }

        public int TipoConexion { get; set; }

        public int Caja { get; set; }
        public int Medidor { get; set; }
        public int Marca { get; set; }

        public string Numero { get; set; }=string.Empty;

        public string Diametro { get; set; } = string.Empty;
        public long Lectura { get; set; }

        public string Latitud { get; set; } = string.Empty;
        public string Longitud { get; set; } = string.Empty;

        public string Fachada { get; set; } = string.Empty;

        public string Observacion { get; set; } = string.Empty;

    
    }
}
