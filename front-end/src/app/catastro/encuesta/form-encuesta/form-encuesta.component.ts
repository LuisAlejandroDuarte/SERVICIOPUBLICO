import { Component, OnInit, Input, AfterViewInit, OnChanges, SimpleChanges, Output, EventEmitter } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { FormValidatorService } from 'src/app/help/form-validator.service';
import { BaseEncuesta, lista, ListaCaja, ListaMarca, ListaMedidor, ListaTipoConexion } from 'src/app/model/baseEncuesta.model';
import { Catastro } from 'src/app/model/catastro.mode';
import { Uso } from 'src/app/model/uso.model';
import { DatatableService } from 'src/app/services/change/datatable.service';
import { UsoService } from 'src/app/services/uso.service';
import { environment } from 'src/environments/environment';
import Swal from 'sweetalert2';
declare const $: any;
@Component({
  selector: 'app-form-encuesta',
  templateUrl: './form-encuesta.component.html',
  styleUrls: ['./form-encuesta.component.css']
})
export class FormEncuestaComponent implements OnInit,AfterViewInit {

  formEncuesta:FormGroup;
  title:string='Encuesta';
  usos:Uso[]=[];
  listaTipoConexion:lista[]=ListaTipoConexion;
  listaCaja:lista[]=ListaCaja;
  listaMedidor:lista[]=ListaMedidor;
  listaMarca:lista[]=ListaMarca;
  urlImagen:string=environment.UrlImagenDefault;
  @Input() model:BaseEncuesta;
  @Output() guardarCambios = new EventEmitter<Catastro>();
  constructor(private fb:FormBuilder,private formValidatorService:FormValidatorService,private router:Router,
    private usoService:UsoService,private spinner:NgxSpinnerService) { }
  
  ngOnInit(): void {
    this.formEncuesta = this.fb.group({
      id:[0],
      empresaId:[environment.EmpresaId],
      interno:[0,[Validators.required]],
      nombre:['',[Validators.required]],
      direccion:['',[Validators.required]],
      usoId:[0,[Validators.required]],
      zona:['',[Validators.required]],
      ruta:['',[Validators.required]],
      conexion:['',[Validators.required]],
      manzana:['',[Validators.required]],
      predio:['',[Validators.required]],
      acueducto:[false],
      alcantarillado:[false],
      aseo:[false],
      tipoConexion:[0,[Validators.required]],
      caja:[0,[Validators.required]],
      medidor:[0,[Validators.required]],
      marca:[0,[Validators.required]],
      numero:['',[Validators.required]],
      diametro:[0,[Validators.required]],
      lectura:[0,[Validators.required]],
      latitud:['',[Validators.required]],
      longitud:['',[Validators.required]],
      file:[null],
      imagen:[null],
      observacion:['']
    })
    this.spinner.show();
    this.usoService.getAll().subscribe({
      next:(resp:Uso[])=>{
        this.usos =resp;
        this.spinner.hide();
        this.formEncuesta.get('acueducto').setValue(false);
        this.formEncuesta.get('imagen').setValue(environment.UrlImagenDefault);
      }
    })
    if (localStorage.getItem("predio")) {
      setTimeout(()=>{   
        console.log("Entrando",JSON.parse(localStorage.getItem("predio")));
        this.formEncuesta.patchValue(JSON.parse(localStorage.getItem("predio")));
        console.log("formEncuesta",JSON.stringify(this.formEncuesta.value));
        this.urlImagen= this.formEncuesta.get('imagen').value;

        console.log("formEncuesta2",JSON.stringify(this.formEncuesta.value));
      });
     
    } 
  }

  ngAfterViewInit() {
    
    setTimeout(()=>{   
      console.log("ViewInit",this.model);
      if (this.model) {
        //this.georefrencia();
        this.formEncuesta.patchValue(this.model);  
        if (!localStorage.getItem("predio")) {
          localStorage.setItem("predio",JSON.stringify(this.formEncuesta.value));
        }    
      }
  });
}

georefrencia() {
  if(navigator.geolocation){
    const success = (position)=>{
      console.log("Position",position);
      this.formEncuesta.get('latitud').setValue(position.coords.latitude);
      this.formEncuesta.get('longitud').setValue(position.coords.longitude);
      localStorage.setItem("predio",JSON.stringify(this.formEncuesta.value));
    }
    navigator.geolocation.getCurrentPosition(success, function(msg){
    console.error( msg );
    });
    }
}

onFileSelected(data:any) {
  const file:File = data.target.files[0];

  if (file) {    
    this.formEncuesta.get('file').setValue(file);   
    if (FileReader) {
      var fr = new FileReader();      
      fr.onload = (e)=> {
        $('#idImagen').attr('src', e.target.result);
        console.log("Fachada",e.target.result);
        this.formEncuesta.get('imagen').setValue(e.target.result);     
        localStorage.setItem("predio",JSON.stringify(this.formEncuesta.value));
      }
      fr.readAsDataURL(file);
  }
 
    localStorage.setItem("predio",JSON.stringify(this.formEncuesta.value));
    }
}

onSalir() {
  localStorage.removeItem("predio");
  this.router.navigateByUrl('catastro/encuesta');

}
    


  onSubmit() {
    //console.log("File",this.formEncuesta.get('fachada').value); 
    Swal.fire({
      title: `Desea guardar el número interno ${this.formEncuesta.get("interno").value} ?`,
      showDenyButton: true,      
      confirmButtonText: 'Si',
      denyButtonText: `No`,
    }).then((result) => {      
      if (result.isConfirmed) {
          this.guardarCambios.emit(this.formEncuesta.value);        
      } 
    })

      //console.log("Enviar",this.formEncuesta.value);
  }

  buscarPredio(e:any) {
    console.log("Saliendo",JSON.stringify(this.formEncuesta.value));
    localStorage.setItem("predio",JSON.stringify(this.formEncuesta.value));
    e.stopPropagation();
    this.router.navigateByUrl('catastro/buscar-predio')
  }

}
