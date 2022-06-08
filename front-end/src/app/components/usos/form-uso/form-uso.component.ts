import { AfterViewInit, Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { FormValidatorService } from 'src/app/help/form-validator.service';
import { Uso } from 'src/app/model/uso.model';

@Component({
  selector: 'app-form-uso',
  templateUrl: './form-uso.component.html',
  styleUrls: ['./form-uso.component.css']
})
export class FormUsoComponent implements OnInit,AfterViewInit {

  @Input() title:string;
  formSend:boolean;
  @Input() modelo:Uso;
  @Output() guardarCambios = new EventEmitter<Uso>();
  formUso:FormGroup;

  constructor(private router:Router,private fb:FormBuilder,private formValidatorService:FormValidatorService) { }

  ngOnInit(): void {
    this.formSend=false;
    this.formUso=this.fb.group({
      id:[0],
      codigo:['',[Validators.required]],
      estrato:['',[Validators.required]],
      descripcion:['']
    });
  
    
  }

  ngAfterViewInit(): void {
    setTimeout(()=>{
      if (this.modelo) {
        console.log("PatchUso",this.modelo);
        this.formUso.patchValue(this.modelo);
      }
    },1000);
  }

  onSubmit() {

    this.formSend=true;
    this.guardarCambios.emit(this.formUso.value);

  }

  validarCampo(field:string) {
    this.formValidatorService.campoRequerido(this.formUso,field,this.formSend);
  }

  salir() {
    this.router.navigateByUrl('components/usos');
  }

}
