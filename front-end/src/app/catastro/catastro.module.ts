import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CrearEncuestaComponent } from '../catastro/encuesta/crear-encuesta/crear-encuesta.component';
import { ListaEncuestaComponent } from './encuesta/lista-encuesta/lista-encuesta.component';
import { CatastroRoutes } from './catastro.routing';
import { RouterModule } from '@angular/router';
import { DatatableNetModule } from '../shared/datatable/datatable.module';
import { FormEncuestaComponent } from './encuesta/form-encuesta/form-encuesta.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MaterialModule } from '../app.module';
import { BuscarPredioComponent } from './encuesta/buscar-predio/buscar-predio.component';
import { EditarEncuestaComponent } from './encuesta/editar-encuesta/editar-encuesta.component';
import { FormatNumberDirective } from '../directive/format-number.directive';
import { DirectivesModule } from '../directive/directives.module';


@NgModule({
  declarations: [
    CrearEncuestaComponent,
    ListaEncuestaComponent,
    FormEncuestaComponent,
    BuscarPredioComponent,
    EditarEncuestaComponent
  ],
  imports: [
    CommonModule,
    RouterModule.forChild(CatastroRoutes),
    DatatableNetModule,
    FormsModule,
    ReactiveFormsModule,
    MaterialModule,
    DirectivesModule
  ]
})
export class CatastroModule { }
