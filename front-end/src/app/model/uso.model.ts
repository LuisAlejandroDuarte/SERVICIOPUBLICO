export class Uso {

    constructor(
        public id?:number,
        public codigo?:string,
        public estrato?:string,
        public descripcion?:string,
        public empresaId?:number        
    ) {}

}

export class TablaUso {
    constructor(  
        public id?:number,
        public codigo?:string,
        public estrato?:string,
        public descripcion?:string,
        public empresaId?:number,   
        public edit?:string,
        public eliminar?:string) {}
}