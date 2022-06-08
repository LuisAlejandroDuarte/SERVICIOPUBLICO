import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Uso } from 'src/app/model/uso.model';
import { UsoService } from 'src/app/services/uso.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-crear-uso',
  templateUrl: './crear-uso.component.html',
  styleUrls: ['./crear-uso.component.css']
})
export class CrearUsoComponent implements OnInit {

  constructor(private router:Router,private usoService:UsoService,private snipper:NgxSpinnerService) { }

  ngOnInit(): void {
  }

  guardar(uso:Uso) {
      this.snipper.show();
      this.usoService.crear(uso).subscribe({
        next:(resp:Uso) => {
          this.snipper.hide();
          console.log("Uso Creado",uso);
          this.router.navigateByUrl('components/usos');
        },
        error:(err)=> {
          Swal.fire('Uso',err.message,'error');
        }
      });
  }

}
