

using System.ComponentModel.DataAnnotations.Schema;

namespace SERVICIOPUBLICO.Entities.POCOs
{
    public  class Liquidacion
    {
        public long Id { get; set; }
        public Suscriptor Suscriptor { get; set; } 
        public MesLiquidar MesLiquidar { get; set; }

        #region Acueducto
        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorCargoFijoAcueducto { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorBasicoAcueducto { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorComplementarioAcueducto { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorSuntuarioAcueducto { get; set; }


        [Column(TypeName = "decimal(10,3)")]
        public decimal SubsidioCargoFijoAcueducto { get; set; }


        [Column(TypeName = "decimal(10,3)")]
        public decimal SubsidioBasicoAcueducto { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorContribucionAcueducto { get; set; }

        



        #endregion

        #region Alcantarillado

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorCargoFijoAlcantarillado { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorBasicoAlcantarillado { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorComplementarioAlcantarillado { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorSuntuarioAlcantarillado { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal SubsidioCargoFijoAlcantarillado { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal SubsidioBasicoAlcantarillado { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorContribucionAlcantarillado { get; set; }

        

        #endregion

        #region Aseo
        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorBarridoAseo { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorRecoleccionAseo { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorDisposicionAseo { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal ValorRecaudoAseo { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal SubsidioAseo { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal SubsidvalorContribucionAseoioAseo { get; set; }
        


        #endregion

        #region Otros Valores
        [Column(TypeName = "decimal(10,3)")]
        public decimal OtroValor { get; set; }

        [Column(TypeName = "decimal(10,3)")]
        public decimal OtroSubsidio { get; set; }

        #endregion
    }
}
