import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Tarifa } from '../model/tarifa.model';

const base_url = environment.base_url;
@Injectable({
  providedIn: 'root'
})
export class TarifaService {

  constructor(private http:HttpClient) { }

  getAll(){
      return this.http.get(`${base_url}/GetAllTarifas/${environment.EmpresaId}`);
  }

  get(id:number)
  {
    return this.http.get(`${base_url}/GetTarifa/${id}`);
  }

  editar(tarifa:Tarifa)
  {          
    return this.http.put(`${base_url}/EditarTarifa/`,tarifa);
  }

  crear(tarifa:Tarifa)
  {          
    return this.http.post(`${base_url}/CrearTarifa`,tarifa);      
  }
  eliminar(id:number)
  {
    return this.http.delete(`${base_url}/EliminarTarifa/${id}`);  
  }

}
