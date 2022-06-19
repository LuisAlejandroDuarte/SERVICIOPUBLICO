import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Suscriptor } from 'src/app/model/suscriptor.model';
import { SuscriptorService } from 'src/app/services/suscriptor.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-crear-suscriptor',
  templateUrl: './crear-suscriptor.component.html',
  styleUrls: ['./crear-suscriptor.component.css']
})
export class CrearSuscriptorComponent implements OnInit {

  constructor(private router:Router,private spinner: NgxSpinnerService,private suscriptorService:SuscriptorService) { }

  ngOnInit(): void {
  }

  save(suscriptor:Suscriptor) {
    this.spinner.show();
    this.suscriptorService.crear(suscriptor).subscribe({
      next:(resp:Suscriptor)=>{
        this.spinner.hide();
        this.router.navigateByUrl('components/suscriptores');
      },
      error:(err)=>{
        this.spinner.hide();
        
        Swal.fire('Suscriptores', err.error.Message, 'error')
      }
    });
  }

}
