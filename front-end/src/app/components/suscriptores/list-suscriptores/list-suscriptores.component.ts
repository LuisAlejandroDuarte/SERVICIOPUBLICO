import { Component, OnInit } from '@angular/core';
import { typeColumns } from 'src/app/shared/datatable/datatable.component';
import { Suscriptor, TablaSuscriptor } from '../../../model/suscriptor.model';
import { environment } from 'src/environments/environment';
import { Router } from '@angular/router';
import { SuscriptorService } from 'src/app/services/suscriptor.service';
import Swal from 'sweetalert2';
import { NgxSpinnerService } from 'ngx-spinner';
import { DatatableService } from 'src/app/services/change/datatable.service';
@Component({
  selector: 'app-list-suscriptores',
  templateUrl: './list-suscriptores.component.html',
  styleUrls: ['./list-suscriptores.component.css']
})
export class ListSuscriptoresComponent implements OnInit {

  constructor(private router:Router,private suscriptorService:SuscriptorService,private spinner: NgxSpinnerService,
    private serviceDataTabla:DatatableService) { }
  data: Suscriptor[]=[];
  columns: typeColumns[]=[];  
  usuarios:TablaSuscriptor[]=[];
  host:string;
  ngOnInit(): void {
    this.host=`${ environment.base_url}/GetAllSuscriptores/`
    this.columns=[
              {title:'Id',data:'id',visible:false},
              {title:'Código',data:'codigo'},
              {title:'Nombre',data:'nombre'},                            
              {title:'Dirección',data:'direccion'},
              {title:'Bloqueado',data:'bloqueado',orderable:false},
              {title:'Editar',data:'edit',orderable:false, render: (data, type, row)=> {
                  return `<a class="btn btn-link btn-warning btn-just-icon edit"  data-item='editar'><i class="material-icons">dvr</i></a>`
              }},
              {title:'Eliminar',data:'eliminar',orderable:false, render: (data, type, row)=> {
                return `<a class="btn btn-link btn-warning btn-just-icon eliminar"  data-item='eliminar'><i class="material-icons" style="color:red">delete</i></a>`
            }}
            ];    
  }

  onclickEditar(suscriptor:Suscriptor) {
    this.router.navigateByUrl('components/editar-suscriptor/' + suscriptor.id);
  }

  onEliminarClick(suscriptor:Suscriptor) {

    console.log("Elimniar",suscriptor); 
    Swal.fire({
      title: `Desea eliminar el suscriptor ${suscriptor.nombre} ?`,
      showDenyButton: true,      
      confirmButtonText: 'Si',
      denyButtonText: `No`,
    }).then((result) => {      
      if (result.isConfirmed) {
        this.spinner.show();
        this.suscriptorService.eliminar(suscriptor.id).subscribe({
          next:(res)=>{
            Swal.fire('Eliminado', 'Suscriptor eliminado', 'success');          
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

  onCrearSuscriptor() {
      this.router.navigateByUrl('components/crear-suscriptor');
  }

}
