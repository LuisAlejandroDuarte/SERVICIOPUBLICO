import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { TablaUso, Uso } from 'src/app/model/uso.model';
import { UsoService } from 'src/app/services/uso.service';
import { typeColumns } from 'src/app/shared/datatable/datatable.component';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-list-usos',
  templateUrl: './list-usos.component.html',
  styleUrls: ['./list-usos.component.css']
})
export class ListUsosComponent implements OnInit {

  data: Uso[]=[];
  columns: typeColumns[];
  constructor(private router:Router,private spinner: NgxSpinnerService,private usoService:UsoService) { }

  ngOnInit(): void {
      setTimeout(()=>{
        this.columns=[          
          { title:'Id',data:'id', visible:false},
          { title:'Código',data:'codigo'},
          { title:'Estrato',data:'estrato'},
          { title:'Descripción',data:'descripcion'},
          { title:'Ver',data:'edit',orderable:false,
          render: ()=> {
                return `<a class="btn btn-link btn-warning btn-just-icon edit"  data-item='editar'><i class="material-icons">dvr</i></a>`
          }},
          { title:'Eliminar',data:'eliminar',orderable:false,
          render: ()=> {
                return `<a class="btn btn-link btn-warning btn-just-icon eliminar"  data-item='eliminar'><i class="material-icons" style="color:red">delete</i></a>`
          }}];

          this.loadData();
        
      })
  }

  loadData() {
    setTimeout(()=>{
    this.spinner.show();
    this.data=[];
    this.usoService.getAll().subscribe({
      next:(resp:Uso[])=>{
        console.log("Usos",resp);
        resp.forEach(element=>{
          this.data.push(new TablaUso(element.id,element.codigo,element.estrato,element.descripcion,element.empresaId,'',''));
        });                
        this.spinner.hide();
      },
      error:(err)=>{
        this.spinner.hide();
        Swal.fire("Usos",err.error.message,'error');
      }
    })        
  },500);
  }

  onclickEditar(data:Uso)
  {
    console.log("Editar",data);
    this.router.navigateByUrl('components/editar-uso/' + data.id);
  }

  onclickEliminar(data:Uso) {
    console.log("Elimniar",data); 
    Swal.fire({
      title: `Desea eliminar el uso ${data.codigo}`,
      showDenyButton: true,      
      confirmButtonText: 'Si',
      denyButtonText: `No`,
    }).then((result) => {      
      if (result.isConfirmed) {
        
        this.usoService.eliminar(data.id).subscribe({
          next:(res)=>{
            Swal.fire('Eliminado', 'Uso eliminado', 'success');          
            this.loadData();   
           
          },
          error:(err)=>{            
            Swal.fire('Error', err.message, 'error');
          }
        });        
      } 
    })
  }

  onCrearUso() {
    this.router.navigateByUrl('components/crear-uso');
  }

}
