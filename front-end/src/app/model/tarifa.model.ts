export class Tarifa {
    constructor(  
        public id?:number,    
        public usoId?:number,
        public nombreUso?:string,      

        public rangoUNO?:number,
        public rangoDOS?:number,
        public rangoTRES?:number,
        
        //Acueducto
        
        public ValorCargoFijoAcueducto?:number,        
        public valorBasicoAcueducto?:number,        
        public valorComplementarioAcueducto?:number,        
        public valorSuntuarioAcueducto?:number,        
        public costoReferenciaCargoFijoAcueducto?:number,
        public costoReferenciaConsumoAcueducto?:number,        
        public subsidioCargoFijoAcueducto?:number,        
        public subsidioBasicoAcueducto?:number,        
        public porcentajeContribucionCargofijoAcueducto?:number,        
        public porcentajeContribucionConsumoAcueducto?:number,        
        public incrementoCargoFijoAcueducto?:number,        
        public incrementoConsumoAcueducto?:number,        

        //  Alcantarillado
        
        public valorCargoFijoAlcantarillado?:number,        
        public valorBasicoAlcantarillado?:number,        
        public valorComplementarioAlcantarillado?:number,        
        public valorSuntuarioAlcantarillado?:number,        
        public costoReferenciaCargoFijoAlcantarillado?:number,        
        public costoReferenciaConsumoAlcantarillado?:number,        
        public subsidioCargoFijoAlcantarillado?:number,        
        public subsidioBasicoAlcantarillado?:number,        
        public porcentajeContribucionCargofijoAlcantarillado?:number,        
        public porcentajeContribucionConsumoAlcantarillado?:number,        
        public incrementoCargoFijoAlcantarillado?:number,        
        public incrementoConsumoAlcantarillado?:number,
        
        // Aseo
        
        public valorBarridoAseo?:number,        
        public valorRecoleccionAseo?:number,        
        public valorDisposicionAseo?:number,        
        public valorRecaudoAseo?:number,        
        public subsidioAseo?:number,        
        public incrementoAseo?:number,        
        public porcentajeContribucionAseo?:number,

        // Otros Valores        
        public interesMora?:number,        
        public porcentajeFinanaciacion?:number,        
        public otroValor?:number,        
        public otroSubsidio?:number,        
        ){}
}

export class TablaTarifa {
    constructor(
        public id?:number,    
        public usoId?:number,
        public nombreUso?:string,    
        public edit?:string,
        public eliminar?:string
    ) {}
}