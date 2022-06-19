import { AfterViewInit, Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { FormValidatorService } from 'src/app/help/form-validator.service';
import { Suscriptor } from 'src/app/model/suscriptor.model';
import { Uso } from 'src/app/model/uso.model';
import { UsoService } from 'src/app/services/uso.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-form-suscriptor',
  templateUrl: './form-suscriptor.component.html',
  styleUrls: ['./form-suscriptor.component.css']
})
export class FormSuscriptorComponent implements OnInit,AfterViewInit {

  @Input() title:string;
  formSend:boolean;
  @Input() modelo:Suscriptor;
  @Output() guardarCambios = new EventEmitter<Suscriptor>();
  formSuscriptor:FormGroup;
  usos:Uso[]=[];

  constructor(private router:Router,private fb:FormBuilder,private formValidatorService:FormValidatorService,
    private serviceUso:UsoService,private snipper:NgxSpinnerService) { }

  ngOnInit(): void {

    this.formSuscriptor=this.fb.group({
      id:[0],
      usoId:[null,[Validators.required]],     
      codigoVerificacion:[0],
      codigo:[''],
      sistema:[0],
      nombre:['',[Validators.required]],
      direccion:['',[Validators.required]],
      telefono:['',[Validators.required]],
      alcantarillado:[false],
      aseo:[false],
      atraso:[0],
      sector:[''],
      seccion:[''],
      manzanaDane:[''],
      manzanaIgac:[''],
      manzanaEstratifica:[''],
      bloqueo:[false],

      zona:['',[Validators.required,Validators.maxLength(2),Validators.minLength(2)]],
      ruta:['',[Validators.required,Validators.maxLength(2),Validators.minLength(2)]],
      conexion:['',[Validators.required,Validators.maxLength(4),Validators.minLength(4)]],
      piso:['',[Validators.required,Validators.maxLength(2),Validators.minLength(2)]],
      apto:['',[Validators.required,Validators.maxLength(2),Validators.minLength(2)]]
    });

    this.snipper.show();
    this.serviceUso.getAll().subscribe({
      next:(resp:Uso[])=>{
        this.snipper.hide();
        this.usos=resp;
        console.log("USOS",resp);
      },
      error:(err)=> {
        this.snipper.hide();
        Swal.fire('USOS',err.message, 'error');
      }
    });
  }

  ngAfterViewInit() {
    setTimeout(()=>{   
    if (this.modelo) {
        const codeSuscriptor= this.modelo.codigo.split("-");

        this.formSuscriptor.get('zona').setValue(codeSuscriptor[0]);    
        this.formSuscriptor.get('ruta').setValue(codeSuscriptor[1]);    
        this.formSuscriptor.get('conexion').setValue(codeSuscriptor[2]);    
        this.formSuscriptor.get('piso').setValue(codeSuscriptor[3]);    
        this.formSuscriptor.get('apto').setValue(codeSuscriptor[4]);    
        this.formSuscriptor.patchValue(this.modelo);
        console.log("SUSCRIPTORES",this.formSuscriptor.value);
    }
    },1000);
  }

  onSubmit() {
    const codeSuscriptor=new  String("");
     const code= codeSuscriptor.concat(this.formSuscriptor.get('zona').value.toString(),"-",
                            this.formSuscriptor.get('ruta').value.toString(),"-",
                            this.formSuscriptor.get('conexion').value.toString(),"-",
                            this.formSuscriptor.get('piso').value.toString(),"-",
                            this.formSuscriptor.get('apto').value.toString());    
    this.formSuscriptor.get('codigo').setValue(code);
    this.guardarCambios.emit(this.formSuscriptor.value);
  }

  salir() {
      this.router.navigateByUrl('components/suscriptores');
  }

  validarCampo(field:string) {
    this.formValidatorService.campoRequerido(this.formSuscriptor,field,this.formSend);
  }

}
