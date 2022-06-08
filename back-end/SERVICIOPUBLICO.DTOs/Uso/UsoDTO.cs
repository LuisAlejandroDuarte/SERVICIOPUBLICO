

namespace SERVICIOPUBLICO.DTOs.Uso
{
    public class UsoDTO: ColumnsAccion
    {
        public long Id { get; set; }
        public int Codigo { get; set; }
        public int Estrato { get; set; }
        public string? Descripcion { get; set; }
        public long? EmpresaId { get; set; }        
    }
}
