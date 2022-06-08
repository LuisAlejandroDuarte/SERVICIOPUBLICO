import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Tarifa } from 'src/app/model/tarifa.model';
import { TarifaService } from 'src/app/services/tarifa.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-editar-tarifa',
  templateUrl: './editar-tarifa.component.html',
  styleUrls: ['./editar-tarifa.component.css']
})
export class EditarTarifaComponent implements OnInit {

  constructor(private activatedRoute: ActivatedRoute,private tarifaService:TarifaService,private spinner: NgxSpinnerService) { }

  modelo:Tarifa;

  ngOnInit(): void {

    this.activatedRoute.params.subscribe(params=>{
      this.tarifaService.get(params.id).subscribe({
        next:(resp:Tarifa)=>{
          this.modelo=resp;
          console.log("TARIFA",resp);
        },

      });
    })
  }

  save(tarifa:Tarifa)
  {
    this.spinner.show();
    this.tarifaService.editar(tarifa).subscribe({
      next:(resp:Tarifa)=>{
        this.spinner.hide();
        Swal.fire('TARIFAS',"Tarifa guadada","success");
      },
      error:(err)=> {
        this.spinner.hide();
        Swal.fire('TARIFAS', err.message, 'error');
      }
    });
  }

}
