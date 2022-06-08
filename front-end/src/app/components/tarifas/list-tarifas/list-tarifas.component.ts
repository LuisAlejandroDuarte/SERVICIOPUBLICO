import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { TablaTarifa, Tarifa } from 'src/app/model/tarifa.model';
import { TarifaService } from 'src/app/services/tarifa.service';
import { typeColumns } from 'src/app/shared/datatable/datatable.component';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-list-tarifas',
  templateUrl: './list-tarifas.component.html',
  styleUrls: ['./list-tarifas.component.css']
})
export class ListTarifasComponent implements OnInit {

  data: Tarifa[]=[];
  columns: typeColumns[];
  constructor(private router:Router,private spinner: NgxSpinnerService,private tarifaService:TarifaService) { }

  ngOnInit(): void {
    setTimeout(()=>{
      this.columns=[          
        { title:'Id',data:'id', visible:false},
        { title:'Uso',data:'nombreUso',width:'90%'},      
        { title:'Ver',data:'edit',orderable:false,width:'4%',
        render: ()=> {
              return `<a class="btn btn-link btn-warning btn-just-icon edit"  data-item='editar'><i class="material-icons">dvr</i></a>`
        }},
        { title:'Eliminar',data:'eliminar',orderable:false,width:'4%',
        render: ()=> {
              return `<a class="btn btn-link btn-warning btn-just-icon eliminar"  data-item='eliminar'><i class="material-icons" style="color:red">delete</i></a>`
        }}];
        this.loadData();
      });    
  }

  loadData() {
    setTimeout(()=>{
    this.spinner.show();
    this.data=[];
    this.tarifaService.getAll().subscribe({
      next:(resp:Tarifa[])=>{
        console.log("Tarifas",resp);
        resp.forEach(element=>{
          this.data.push(new TablaTarifa(element.id,element.usoId, element.nombreUso,'',''));
        });                
        this.spinner.hide();
      },
      error:(err)=>{
        this.spinner.hide();
        Swal.fire("Usos",err.error.message,'error');
      }
    })        
  },1000);
  }

  onclickEditar(tarifa:Tarifa)
  {
      this.router.navigateByUrl('components/editar-tarifa/'+ tarifa.id );
  }

  onclickEliminar(data:Tarifa) {
    console.log("Elimniar",data); 
    Swal.fire({
      title: `Desea eliminar la tarifa?`,
      showDenyButton: true,      
      confirmButtonText: 'Si',
      denyButtonText: `No`,
    }).then((result) => {      
      if (result.isConfirmed) {
        this.spinner.show();
        this.tarifaService.eliminar(data.id).subscribe({
          next:(res)=>{
            Swal.fire('Eliminado', 'Tarifa eliminada', 'success');          
            this.loadData();
            this.spinner.hide();   
           
          },
          error:(err)=>{            
            Swal.fire('Error', err.message, 'error');
          }
        });        
      } 
    })
  }

  onCrearTarifa() {
    this.router.navigateByUrl('components/crear-tarifa');
  }

}
