import { CUSTOM_ELEMENTS_SCHEMA, NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MaterialModule } from '../app.module';

import { ButtonsComponent } from './buttons/buttons.component';
import { ComponentsRoutes } from './components.routing';
import { GridSystemComponent } from './grid/grid.component';
import { IconsComponent } from './icons/icons.component';
import { NotificationsComponent } from './notifications/notifications.component';
import { PanelsComponent } from './panels/panels.component';
import { SweetAlertComponent } from './sweetalert/sweetalert.component';
import { TypographyComponent } from './typography/typography.component';
import { ListUsuariosComponent } from './usuarios/list-usuarios/list-usuarios.component';
import { FormUsuariosComponent } from './usuarios/form-usuarios/form-usuarios.component';
import { CrearUsuariosComponent } from './usuarios/crear-usuarios/crear-usuarios.component';
import { EditarUsuariosComponent } from './usuarios/editar-usuarios/editar-usuarios.component';
import { ListTablaModule } from '../shared/list-tabla/list-tabla.module';
import { DatatableNetModule } from '../shared/datatable/datatable.module';
import { ListPropietariosComponent } from './propietarios/list-propietarios/list-propietarios.component';
import { FormPropietarioComponent } from './propietarios/form-propietario/form-propietario.component';
import { EditPropietarioComponent } from './propietarios/edit-propietario/edit-propietario.component';
import { CrearPropietarioComponent } from './propietarios/crear-propietario/crear-propietario.component';
import { ListMotosComponent } from './motos/list-motos/list-motos.component';
import { FormMotoComponent } from './motos/form-moto/form-moto.component';
import { EditMotoComponent } from './motos/edit-moto/edit-moto.component';
import { CrearMotoComponent } from './motos/crear-moto/crear-moto.component';
import { ListTurnosComponent } from './turnos/list-turnos/list-turnos.component';
import { FormTurnoComponent } from './turnos/form-turno/form-turno.component';
import { CrearTurnoComponent } from './turnos/crear-turno/crear-turno.component';
import { ListRutasComponent } from './rutas/list-rutas/list-rutas.component';
import { FormRutaComponent } from './rutas/form-ruta/form-ruta.component';
import { CrearRutaComponent } from './rutas/crear-ruta/crear-ruta.component';
import { EditarRutaComponent } from './rutas/editar-ruta/editar-ruta.component';
import { FormatNumberDirective } from '../directive/format-number.directive';
import { ListUsosComponent } from './usos/list-usos/list-usos.component';
import { FormUsoComponent } from './usos/form-uso/form-uso.component';
import { CrearUsoComponent } from './usos/crear-uso/crear-uso.component';
import { EditarUsoComponent } from './usos/editar-uso/editar-uso.component';
import { ListTarifasComponent } from './tarifas/list-tarifas/list-tarifas.component';
import { CrearTarifaComponent } from './tarifas/crear-tarifa/crear-tarifa.component';
import { EditarTarifaComponent } from './tarifas/editar-tarifa/editar-tarifa.component';
import { FormTarifaComponent } from './tarifas/form-tarifa/form-tarifa.component';
import { ListSuscriptoresComponent } from './suscriptores/list-suscriptores/list-suscriptores.component';
import { CrearSuscriptorComponent } from './suscriptores/crear-suscriptor/crear-suscriptor.component';
import { EditarSuscriptorComponent } from './suscriptores/editar-suscriptor/editar-suscriptor.component';
import { FormSuscriptorComponent } from './suscriptores/form-suscriptor/form-suscriptor.component';



@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(ComponentsRoutes),
    FormsModule,
    ReactiveFormsModule,
    MaterialModule,
    ListTablaModule,
    DatatableNetModule
  ],
  declarations: [
      ButtonsComponent,
      GridSystemComponent,
      IconsComponent,
      NotificationsComponent,
      PanelsComponent,
      SweetAlertComponent,
      TypographyComponent,      
      ListUsuariosComponent,
      FormUsuariosComponent,
      CrearUsuariosComponent,
      EditarUsuariosComponent,
      ListPropietariosComponent,
      FormPropietarioComponent,
      EditPropietarioComponent,
      CrearPropietarioComponent,
      ListMotosComponent,
      FormMotoComponent,
      EditMotoComponent,
      CrearMotoComponent,
      ListTurnosComponent,
      FormTurnoComponent,
      CrearTurnoComponent,
      ListRutasComponent,
      FormRutaComponent,
      CrearRutaComponent,
      EditarRutaComponent,
      FormatNumberDirective,
      ListUsosComponent,
      FormUsoComponent,
      CrearUsoComponent,
      EditarUsoComponent,
      ListTarifasComponent,
      CrearTarifaComponent,
      EditarTarifaComponent,
      FormTarifaComponent,
      ListSuscriptoresComponent,
      CrearSuscriptorComponent,
      EditarSuscriptorComponent,
      FormSuscriptorComponent
      
  ]  
})

export class ComponentsModule {}
