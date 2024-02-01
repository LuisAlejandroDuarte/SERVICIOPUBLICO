import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Catastro } from '../model/catastro.mode';
const base_url = environment.base_url;
@Injectable({
  providedIn: 'root'
})
export class CatastroService {

  constructor(private http:HttpClient) { }

  getAll(){
    return this.http.get(`${base_url}/GetAllCatastro/`);
  }
  eliminar(id:number) {
    return this.http.delete(`${base_url}/GetCatastro/ ${id}`);
  }

  save(datos:FormData) {
    return this.http.post(`${base_url}/CrearCatastro/`,datos);
  }
  editar(datos:FormData) {
    return this.http.post(`${base_url}/EditarCatastro/`,datos);
  }

  getImagen(id:number) {
    return this.http.get(`${base_url}/CrearCatastro/${id}`);
  }

  get(id:number) {
    return this.http.get(`${base_url}/GetCatastro/${id}`);
  }


}
