import { environment } from 'src/environments/environment';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Catastro, TablaCatastro } from 'src/app/model/catastro.mode';
import { CatastroService } from 'src/app/services/catastro.service';
import { DatatableService } from 'src/app/services/change/datatable.service';
import { typeColumns } from 'src/app/shared/datatable/datatable.component';
import Swal from 'sweetalert2';
import { CatastroModule } from 'src/app/catastro/catastro.module';

@Component({
  selector: 'app-lista-encuesta',
  templateUrl: './lista-encuesta.component.html',
  styleUrls: ['./lista-encuesta.component.css']
})
export class ListaEncuestaComponent implements OnInit {

 
  constructor(private router:Router,private catastroService:CatastroService,private spinner: NgxSpinnerService,
    private serviceDataTabla:DatatableService) { }
  data: Catastro[]=[];
  columns: typeColumns[]=[];  
  catastro:TablaCatastro[]=[];
  host:string;
  ngOnInit(): void {
    this.host=`${ environment.base_url}/GetAllCatastro/`
    this.columns=[
              {title:'Id',data:'id',visible:false},
              {title:'Interno',data:'interno'},
              {title:'Nombre',data:'nombre'},                            
              {title:'Dirección',data:'direccion'},           
              {title:'Editar',data:'edit',orderable:false, render: (data, type, row)=> {
                  return `<a class="btn btn-link btn-warning btn-just-icon edit"  data-item='editar'><i class="material-icons">dvr</i></a>`
              }},
              {title:'Eliminar',data:'eliminar',orderable:false, render: (data, type, row)=> {
                return `<a class="btn btn-link btn-warning btn-just-icon eliminar"  data-item='eliminar'><i class="material-icons" style="color:red">delete</i></a>`
            }}
            ];    
  }

  onclickEditar(catastro:Catastro) {
    this.router.navigateByUrl('catatro/editar-encuesta/' + catastro.id);
  }

  onEliminarClick(catastro:Catastro) {

    console.log("Elimniar",catastro); 
    Swal.fire({
      title: `Desea eliminar el catastro ${catastro.nombre} ?`,
      showDenyButton: true,      
      confirmButtonText: 'Si',
      denyButtonText: `No`,
    }).then((result) => {      
      if (result.isConfirmed) {
        this.spinner.show(undefined, { fullScreen: true });
        this.catastroService.eliminar(catastro.id).subscribe({
          next:(res)=>{
            Swal.fire('Eliminado', 'Catastro eliminado', 'success');          
            this.serviceDataTabla.setData(null);
            this.spinner.hide();   
           
          },
          error:(err)=>{            
            Swal.fire('Error', err.message, 'error');
          }
        });        
      } 
    })
  }

  onCrearCatastro() {
    this.router.navigateByUrl('catastro/crear-encuesta/0');
  }
}
