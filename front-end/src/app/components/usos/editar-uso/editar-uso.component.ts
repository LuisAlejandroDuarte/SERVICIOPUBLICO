import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Uso } from 'src/app/model/uso.model';
import { UsoService } from 'src/app/services/uso.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-editar-uso',
  templateUrl: './editar-uso.component.html',
  styleUrls: ['./editar-uso.component.css']
})
export class EditarUsoComponent implements OnInit {
  modelo:Uso;
  constructor(private router:Router,private activatedRoute: ActivatedRoute,private usoService:UsoService,private spinner: NgxSpinnerService) { }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(params=>{
      this.spinner.show();
      this.usoService.get(params.id).subscribe({
        next:(resp:Uso)=>{
          this.spinner.hide();
          this.modelo=resp;
          console.log("USOEDITAR",resp);
        },
      });
    })

  }

  guardar(uso:Uso) {
    this.spinner.show();
    this.usoService.editar(uso).subscribe({
      next:(resp:Uso)=>{
        this.spinner.hide()
        this.router.navigateByUrl('components/usos');
      },
      error:(err)=> {
        this.spinner.hide()
        Swal.fire('Uso',err.message, 'error');
      }
    });
  }
}
