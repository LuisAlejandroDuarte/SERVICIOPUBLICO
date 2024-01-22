export class Catastro {
    constructor(
        public id?:number,
        public empresaId?:number,
        public usuarioId?:number,
        public interno?:number,
        public nombre?:string,
        public direccion?:string,
        public usoId?:number,
        public zona?:string,
        public ruta?:string,
        public conexion?:string,
        public manzana?:string,
        public predio?:string,
        public acueduto?:boolean,
        public alcantarillado?:boolean,
        public aseo?:boolean,
        public tipoConexion?:number,
        public caja?:number,
        public medidor?:number,
        public marca?:number,
        public numero?:string,
        public diametro?:number,
        public lectura?:number,
        public latitud?:string,
        public longitud?:string,
        public file?:File,
        public imagen?:string,
        public observacion?:string
    ) {}

   
}

export class TablaCatastro {
    constructor(
        public id?:number,             
        public interno?:number,        
        public nombre?:string,
        public direccion?:string,        
        public edit?:string,
        public eliminar?:string
    ) {}
}
