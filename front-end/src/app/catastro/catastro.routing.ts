import { Routes } from "@angular/router";
import { BuscarPredioComponent } from "./encuesta/buscar-predio/buscar-predio.component";
import { CrearEncuestaComponent } from "./encuesta/crear-encuesta/crear-encuesta.component";
import { EditarEncuestaComponent } from "./encuesta/editar-encuesta/editar-encuesta.component";
import { ListaEncuestaComponent } from "./encuesta/lista-encuesta/lista-encuesta.component";

export const CatastroRoutes: Routes = [
    {
      path: '',
      children: 
      [
          {
              path: 'encuesta',
              component: ListaEncuestaComponent
          },{
            path: 'crear-encuesta/:id',
            component: CrearEncuestaComponent
          },{
            path: 'editar-encuesta/:id',
            component: EditarEncuestaComponent
          },{
            path: 'buscar-predio',
            component: BuscarPredioComponent
          }
      ]
  }]