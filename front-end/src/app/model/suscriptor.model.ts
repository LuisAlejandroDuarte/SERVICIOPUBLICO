export class Suscriptor {
    constructor(
        public id?:number,
        public usoId?:number,        
        public codigo?:string,
        public codigoVerificacion?:number,
        public sistema?:number,
        public nombre?:string,
        public direccion?:string,
        public telefono?:string,
        public alcantarillado?:boolean,
        public aseo?:boolean,
        public atraso?:number,
        public sector?:string,
        public seccion?:string,
        public manzanaDane?:string,
        public manzanaIgac?:string,
        public manzanaEstratifica?:string,
        public bloqueo?:boolean
    ) {}
}

export class TablaSuscriptor {
    constructor(
        public id?:number,             
        public codigo?:string,        
        public nombre?:string,
        public direccion?:string,
        public telefono?:string,
        public edit?:string,
        public eliminar?:string
    ) {}
}