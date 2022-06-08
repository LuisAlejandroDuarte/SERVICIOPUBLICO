import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Tarifa } from 'src/app/model/tarifa.model';
import { TarifaService } from 'src/app/services/tarifa.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-crear-tarifa',
  templateUrl: './crear-tarifa.component.html',
  styleUrls: ['./crear-tarifa.component.css']
})
export class CrearTarifaComponent implements OnInit {

  constructor(private tarifaService:TarifaService,private snipper:NgxSpinnerService,private router:Router) { }

  ngOnInit(): void {
  }


  save(tarifa:Tarifa) {
    this.snipper.show();
    this.tarifaService.crear(tarifa).subscribe({
      next:(resp:Tarifa)=>{
        this.snipper.hide();
        this.router.navigateByUrl('components/tarifas');
      },
      error:(err)=>{
        this.snipper.hide();
        Swal.fire('TARIFAS', err.message, 'error');
      }
    });
  }
}
