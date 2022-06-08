import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { environment } from 'src/environments/environment';
import { Uso } from '../model/uso.model';

const base_url = environment.base_url;
@Injectable({
  providedIn: 'root'
})
export class UsoService {

  constructor(private http:HttpClient,private router:Router) { }

  getAll(){
      return this.http.get(`${base_url}/GetAllUsos/${environment.EmpresaId}`);
  }

  get(id:number)
  {
    return this.http.get(`${base_url}/GetUso/${id}`);
  }

  editar(uso:Uso)
  {      
    uso.empresaId=environment.EmpresaId;
    return this.http.put(`${base_url}/EditarUso/`,uso);
  }

  crear(uso:Uso)
  {      
    uso.empresaId=environment.EmpresaId;
    return this.http.post(`${base_url}/CrearUso`,uso);      
  }
  eliminar(id:number)
  {
    return this.http.delete(`${base_url}/EliminarUso/${id}`);  
  }

}
