export class BaseEncuesta {
    constructor(public id?:number,
        public EmpresaId?:number,
        public interno?:number,
        public nombre?:string,
        public direccion?:string,
        public usoId?:number,
        public acueduto?:boolean,        
        public alcantarillado?:boolean,
        public aseo?:boolean) {}
}

export class TablaBaseEncuesta {
    constructor(public id?:number,
        public interno?:number,
        public nombre?:string,
        public direccion?:string) {}
}

export interface lista  {
    id:number,
    nombre:string
}

export interface GeoLocation {
    longitud:string,
    latitud:string
}

export const  ListaTipoConexion:lista[] = [
    {id:1,nombre:'Normal'},
    {id:2,nombre:'Derivada'},
    {id:3,nombre:'Contabilizada'},
    {id:4,nombre:'Fraudulenta'}
]


export const  ListaCaja:lista[] = [
    {id:1,nombre:'Buena'},
    {id:2,nombre:'Mala'},
    {id:3,nombre:'No existe'}
    
]

export const  ListaMedidor:lista[] = [
    {id:1,nombre:'Bueno'},
    {id:2,nombre:'Roto'},
    {id:3,nombre:'Lectura ilegible'},
    {id:4,nombre:'No existe'}
    
]

export const  ListaMarca:lista[] = [
    {id:1,nombre:'Achitokey'},
    {id:2,nombre:'Tavira'},
    {id:3,nombre:'Kent'},
    {id:4,nombre:'Otro'}    
]