import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Suscriptor } from '../model/suscriptor.model';

const base_url = environment.base_url;
@Injectable({
  providedIn: 'root'
})
export class SuscriptorService {

  constructor(private http:HttpClient) { }

  getAll(){
      return this.http.get(`${base_url}/GetAllSuscriptores/${environment.EmpresaId}`);
  }

  get(id:number)
  {
    return this.http.get(`${base_url}/GetSuscriptor/${id}`);
  }

  editar(suscriptor:Suscriptor)
  {          
    return this.http.put(`${base_url}/EditarSuscriptor/`,suscriptor);
  }

  crear(suscriptor:Suscriptor)
  {          
    return this.http.post(`${base_url}/CrearSuscriptor`,suscriptor);      
  }
  eliminar(id:number)
  {
    return this.http.delete(`${base_url}/EliminarSuscriptor/${id}`);  
  }

}