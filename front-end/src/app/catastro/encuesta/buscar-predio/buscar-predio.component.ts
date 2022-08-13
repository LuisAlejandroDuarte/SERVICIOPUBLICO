import { BaseEncuesta, TablaBaseEncuesta } from './../../../model/baseEncuesta.model';
import { Component, OnInit } from '@angular/core';
import { typeColumns } from 'src/app/shared/datatable/datatable.component';
import { environment } from 'src/environments/environment';
import { Router } from '@angular/router';

@Component({
  selector: 'app-buscar-predio',
  templateUrl: './buscar-predio.component.html',
  styleUrls: ['./buscar-predio.component.css']
})
export class BuscarPredioComponent implements OnInit {
  data: BaseEncuesta[]=[];
  columns: typeColumns[]=[];  
  catastro:TablaBaseEncuesta[]=[];
  host:string;
  constructor(private route:Router) { }

  ngOnInit(): void {
    this.host=`${ environment.base_url}/GetAllBaseEncuesta/`
    this.columns=[
              {title:'Id',data:'id',visible:false},
              {title:'Interno',data:'interno'},
              {title:'Nombre',data:'nombre'},                            
              {title:'Dirección',data:'direccion'},           
              {title:'Sel',data:'edit',orderable:false, render: (data, type, row)=> {
                  return `<a class="btn btn-link btn-warning btn-just-icon edit"  data-item='editar'><i class="material-icons">dvr</i></a>`
              }}];    
  }

  onclickEditar(baseEncuesta:BaseEncuesta) {
      console.log("SEl",baseEncuesta);
      this.route.navigateByUrl(`catastro/crear-encuesta/${baseEncuesta.id}`);
      
      
  }

  onSalir() {
    this.route.navigateByUrl(`catastro/crear-encuesta/0`);
  }


}
