import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { BaseEncuesta } from 'src/app/model/baseEncuesta.model';
import { Catastro } from 'src/app/model/catastro.mode';
import { BaseEncuestaService } from 'src/app/services/base-encuesta.service';
import { CatastroService } from 'src/app/services/catastro.service';
import { NgxSpinnerService } from 'ngx-spinner';
import Swal from 'sweetalert2';


@Component({
  selector: 'app-crear-encuesta',
  templateUrl: './crear-encuesta.component.html',
  styleUrls: ['./crear-encuesta.component.css']
})
export class CrearEncuestaComponent implements OnInit {
  urlImagen:any;
  constructor(private baseEncuestaService:BaseEncuestaService,private activatedRoute: ActivatedRoute,private serviceCatastro:CatastroService,
    private spinner:NgxSpinnerService) { }
    modelBaseEncuesta:BaseEncuesta;
  ngOnInit(): void {

    

    this.activatedRoute.params.subscribe(params=>{
      if (params.id!=0) {
        this.baseEncuestaService.get(params.id).subscribe({
          next:(resp:BaseEncuesta)=>{
            this.modelBaseEncuesta=resp;
            console.log("Encuesta",resp);
          },

        });
      }     
    })
  }  
  save(catastro:Catastro) {        
    catastro.usuarioId =JSON.parse(localStorage.getItem("user")).id;
    const data = new FormData;    
    data.append("file", catastro.file);
    data.append("empresaId", catastro.empresaId.toString());
    data.append("usuarioId", catastro.usuarioId.toString());    
    data.append("interno", catastro.interno.toString()); 
    data.append("nombre", catastro.nombre); 
    data.append("direccion", catastro.direccion);    
    data.append("usoId", catastro.usoId.toString());    
    data.append("zona", catastro.zona);    
    data.append("ruta", catastro.ruta);
    data.append("conexion", catastro.conexion);    
    data.append("manzana", catastro.manzana);    
    data.append("predio", catastro.predio);    
    data.append("acueducto", (catastro.acueduto==true? "true":"false"));    
    data.append("alcantarillado", (catastro.alcantarillado==true? "true":"false"));    
    data.append("aseo", (catastro.aseo==true)? "true":"false");   
    data.append("tipoConexion", catastro.tipoConexion.toString());    
    data.append("caja", catastro.caja.toString());  
    data.append("medidor", catastro.medidor.toString());    
    data.append("marca", catastro.marca.toString());   
    data.append("numero", catastro.numero.toString());   
    data.append("diametro", catastro.diametro.toString());   
    data.append("lectura", catastro.lectura.toString());
    data.append("latitud", catastro.latitud);
    data.append("longitud", catastro.longitud);
    data.append("observacion", catastro.observacion);
    this.spinner.show();
    this.serviceCatastro.save(data).subscribe({
      next:(data:any)=>{
        this.spinner.hide();
      },
      error:(err:any)=>{
        this.spinner.hide();
        console.log("Error",err);
        Swal.fire("Error","Erroa al guardar la encuesta","error");
      }
    });    
  }
}
