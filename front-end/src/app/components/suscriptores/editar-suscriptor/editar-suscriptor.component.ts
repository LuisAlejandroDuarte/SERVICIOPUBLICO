import { SuscriptorService } from './../../../services/suscriptor.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Suscriptor } from 'src/app/model/suscriptor.model';
import Swal from 'sweetalert2';


@Component({
  selector: 'app-editar-suscriptor',
  templateUrl: './editar-suscriptor.component.html',
  styleUrls: ['./editar-suscriptor.component.css']
})
export class EditarSuscriptorComponent implements OnInit {

  modelo:Suscriptor;
  constructor(private activatedRoute: ActivatedRoute,private suscriptorService:SuscriptorService,private spinner: NgxSpinnerService) { }

  ngOnInit(): void {

    
    this.activatedRoute.params.subscribe(params=>{
      this.suscriptorService.get(params.id).subscribe({
        next:(resp:Suscriptor)=>{
          this.modelo=resp;
          console.log("TARIFA",resp);
        },

      });
    })
  }

  save(suscriptor:Suscriptor) {
      this.spinner.show();
      this.suscriptorService.editar(suscriptor).subscribe({
        next:(resp:Suscriptor)=>{
          this.spinner.hide();
          Swal.fire('Suscriptores',"Guardado","success");
        },
        error:(err)=>{
          this.spinner.hide();
          Swal.fire('Suscriptores',err.message,"error");
        }
      });
  }

}
