import { Component, EventEmitter, Input, OnInit, Output, AfterViewInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { FormValidatorService } from 'src/app/help/form-validator.service';
import { Tarifa } from 'src/app/model/tarifa.model';
import { Uso } from 'src/app/model/uso.model';
import { UsoService } from 'src/app/services/uso.service';
import Swal from 'sweetalert2';


@Component({
  selector: 'app-form-tarifa',
  templateUrl: './form-tarifa.component.html',
  styleUrls: ['./form-tarifa.component.css']
})
export class FormTarifaComponent implements OnInit,AfterViewInit {
  @Input() title:string;
  formSend:boolean;
  @Input() modelo:Tarifa;
  @Output() guardarCambios = new EventEmitter<Tarifa>();
  formTarifa:FormGroup;
  usos:Uso[]=[];



  constructor(private router:Router,private fb:FormBuilder,private formValidatorService:FormValidatorService,
      private serviceUso:UsoService,private snipper:NgxSpinnerService) { }

  ngOnInit(): void {

    this.formTarifa = this.fb.group({
      id:[0],
      usoId:[null,[Validators.required]],
      rangoUNO:[null,[Validators.required]],
      rangoDOS:[null,[Validators.required]],
      rangoTRES:[null,[Validators.required]],

      valorCargoFijoAcueducto:[null,[Validators.required]],
      valorBasicoAcueducto:[null,[Validators.required]],
      valorComplementarioAcueducto:[null,[Validators.required]],
      valorSuntuarioAcueducto:[null,[Validators.required]],
      costoReferenciaCargoFijoAcueducto:[null,[Validators.required]],
      costoReferenciaConsumoAcueducto:[null,[Validators.required]],
      subsidioCargoFijoAcueducto:[null,[Validators.required]],
      subsidioBasicoAcueducto:[null,[Validators.required]],      
      porcentajeContribucionCargofijoAcueducto:[null,[Validators.required]],
      porcentajeContribucionConsumoAcueducto:[null,[Validators.required]],
      incrementoCargoFijoAcueducto:[null,[Validators.required]],
      incrementoConsumoAcueducto:[null,[Validators.required]],

      valorCargoFijoAlcantarillado:[null,[Validators.required]],
      valorBasicoAlcantarillado:[null,[Validators.required]],
      valorComplementarioAlcantarillado:[null,[Validators.required]],
      valorSuntuarioAlcantarillado:[null,[Validators.required]],
      costoReferenciaCargoFijoAlcantarillado:[null,[Validators.required]],
      costoReferenciaConsumoAlcantarillado:[null,[Validators.required]],
      subsidioCargoFijoAlcantarillado:[null,[Validators.required]],
      subsidioBasicoAlcantarillado:[null,[Validators.required]],
      porcentajeContribucionCargofijoAlcantarillado:[null,[Validators.required]],
      porcentajeContribucionConsumoAlcantarillado:[null,[Validators.required]],
      incrementoCargoFijoAlcantarillado:[null,[Validators.required]],
      incrementoConsumoAlcantarillado:[null,[Validators.required]],

      valorBarridoAseo:[null,[Validators.required]],
      valorRecoleccionAseo:[null,[Validators.required]],        
      valorDisposicionAseo:[null,[Validators.required]],        
      valorRecaudoAseo:[null,[Validators.required]],        
      subsidioAseo:[null,[Validators.required]],        
      incrementoAseo:[null,[Validators.required]],        
      porcentajeContribucionAseo:[null,[Validators.required]],
      
      interesMora:[null,[Validators.required]],        
      porcentajeFinanaciacion:[null,[Validators.required]],        
      otroValor:[null],        
      otroSubsidio:[null]

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
      this.formTarifa.patchValue(this.modelo);
    }
    },1000);
  }

  validarCampo(field:string) {
    this.formValidatorService.campoRequerido(this.formTarifa,field,this.formSend);
  }

  onSubmit() {
    this.guardarCambios.emit(this.formTarifa.value);
  }

  salir() {
    this.router.navigateByUrl('components/tarifas');
  }




//Eventos TABS

  step = 0;

  setStep(index: number) {
    this.step = index;
  }

  nextStep() {
    this.step++;
  }

  prevStep() {
    this.step--;
  }

}
