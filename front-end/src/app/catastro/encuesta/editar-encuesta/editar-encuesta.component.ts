import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Catastro } from 'src/app/model/catastro.mode';
import { CatastroService } from 'src/app/services/catastro.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-editar-encuesta',
  templateUrl: './editar-encuesta.component.html',
  styleUrls: ['./editar-encuesta.component.css']
})
export class EditarEncuestaComponent implements OnInit {
  modeloCatastro:Catastro;
  constructor(private activatedRoute: ActivatedRoute,private serviceCatastro:CatastroService,private snipper:NgxSpinnerService) { }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(params=>{
        if (params.id) {
          this.snipper.show();
          this.serviceCatastro.get(params.id).subscribe({
            next:(resp:Catastro)=>{
              this.modeloCatastro=resp;
              this.snipper.hide();
            },
            error:(err:any) =>{
              this.snipper.hide();
              Swal.fire("Error","Error al traer los datos","error");
            }
          });
        }
    });
  }

  save(catastro:Catastro) {
    catastro.usuarioId =JSON.parse(localStorage.getItem("user")).id;
    const data = new FormData;    
    data.append("file", catastro.file);
    data.append("Id", catastro.id.toString());
    data.append("empresaId", catastro.empresaId.toString());
    data.append("usuarioId", catastro.usuarioId.toString());
    data.append("usuarioId", catastro.empresaId.toString());
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
    this.snipper.show();
    this.serviceCatastro.editar(data).subscribe({
      next:(data:any)=>{
        this.snipper.hide();
      }
    });    
  }
  
}

