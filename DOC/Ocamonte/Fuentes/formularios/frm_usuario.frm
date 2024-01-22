VERSION 5.00
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "TxtEditor.ocx"
Begin VB.Form frm_usuario 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "MANEJADOR DE USUARIOS"
   ClientHeight    =   3390
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7020
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3390
   ScaleWidth      =   7020
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FraBotonesfunciones 
      Height          =   585
      Left            =   120
      TabIndex        =   19
      Top             =   2760
      Width           =   6825
      Begin VB.CommandButton CmdEliminar 
         Caption         =   "&Eliminar"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   4098
         TabIndex        =   24
         Top             =   150
         Width           =   1305
      End
      Begin VB.CommandButton CmdBuscar 
         Caption         =   "&Buscar"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   2752
         TabIndex        =   23
         Tag             =   "1"
         Top             =   150
         Width           =   1305
      End
      Begin VB.CommandButton CmdNuevo 
         Caption         =   "&Nuevo"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   60
         TabIndex        =   22
         Tag             =   "1"
         Top             =   150
         Width           =   1305
      End
      Begin VB.CommandButton CmdEditar 
         Caption         =   "E&ditar"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   1406
         TabIndex        =   21
         Tag             =   "1"
         Top             =   150
         Width           =   1305
      End
      Begin VB.CommandButton CmdSalir 
         Caption         =   "&Salir"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   5445
         TabIndex        =   20
         Top             =   150
         Width           =   1305
      End
   End
   Begin VB.Frame FraUsuario 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   90
      TabIndex        =   13
      Top             =   60
      Width           =   6870
      Begin VB.CommandButton CmdCambiar 
         Caption         =   "Cambiar Clave"
         Height          =   450
         Left            =   3390
         TabIndex        =   26
         Top             =   180
         Width           =   795
      End
      Begin TxtEditor.TxtEdit txtUsuario 
         Height          =   330
         Left            =   120
         TabIndex        =   0
         Top             =   330
         Width           =   1395
         _ExtentX        =   2461
         _ExtentY        =   582
         MaxLength       =   80
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtNombre 
         Height          =   330
         Left            =   120
         TabIndex        =   3
         Top             =   900
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   582
         MaxLength       =   80
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtApellido 
         Height          =   330
         Left            =   3330
         TabIndex        =   4
         Top             =   900
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   582
         MaxLength       =   80
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtTelefono 
         Height          =   330
         Left            =   120
         TabIndex        =   5
         Top             =   1530
         Width           =   2940
         _ExtentX        =   5186
         _ExtentY        =   582
         MaxLength       =   20
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtDireccion 
         Height          =   330
         Left            =   3120
         TabIndex        =   6
         Top             =   1530
         Width           =   3600
         _ExtentX        =   6350
         _ExtentY        =   582
         MaxLength       =   80
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtClave 
         Height          =   330
         Left            =   1560
         TabIndex        =   1
         Top             =   330
         Width           =   1770
         _ExtentX        =   3122
         _ExtentY        =   582
         MaxLength       =   80
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   "*"
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtCedula 
         Height          =   330
         Left            =   4320
         TabIndex        =   2
         Top             =   330
         Width           =   2370
         _ExtentX        =   4180
         _ExtentY        =   582
         MaxLength       =   20
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin VB.Label LblCedula 
         Caption         =   "Cédula"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   4320
         TabIndex        =   27
         Top             =   150
         Width           =   705
      End
      Begin VB.Label Label1 
         Caption         =   "Clave"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   1560
         TabIndex        =   25
         Top             =   150
         Width           =   705
      End
      Begin VB.Label LblNombre 
         Caption         =   "Nombre(s)"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   120
         TabIndex        =   18
         Top             =   660
         Width           =   855
      End
      Begin VB.Label LblApellido 
         Caption         =   "Apellido(s) :"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   3330
         TabIndex        =   17
         Top             =   690
         Width           =   825
      End
      Begin VB.Label LblTelefono 
         Caption         =   "Teléfono(s) :"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   120
         TabIndex        =   16
         Top             =   1350
         Width           =   855
      End
      Begin VB.Label LblUsuario 
         Caption         =   "Usuario"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   120
         TabIndex        =   15
         Top             =   150
         Width           =   705
      End
      Begin VB.Label LblDireccion 
         Caption         =   "Dirección"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   3120
         TabIndex        =   14
         Top             =   1350
         Width           =   705
      End
   End
   Begin VB.Frame FraControles 
      Height          =   555
      Left            =   2100
      TabIndex        =   7
      Top             =   2160
      Width           =   2850
      Begin VB.CommandButton CmdUltimo 
         Height          =   300
         Left            =   2430
         Picture         =   "frm_usuario.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdSiguiente 
         Height          =   300
         Left            =   2010
         Picture         =   "frm_usuario.frx":02D6
         Style           =   1  'Graphical
         TabIndex        =   10
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdAnterior 
         Height          =   300
         Left            =   510
         Picture         =   "frm_usuario.frx":0611
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdPrimero 
         Height          =   300
         Left            =   120
         Picture         =   "frm_usuario.frx":094A
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   165
         Width           =   300
      End
      Begin VB.Label LblCount 
         Alignment       =   2  'Center
         Caption         =   "9/9"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   960
         TabIndex        =   12
         Top             =   195
         Width           =   975
      End
   End
End
Attribute VB_Name = "frm_usuario"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Fecha: 2005-02-10
'Programador: Luis Alejandro Duarte
'Versión: 1.0
'Revisión: 2005-02-10
'Copyright (c) 2005
'Numérica Ltda.
'All rights reserved
'-------------------------------------------------------------
Dim Editar As Boolean 'Variable que indica si esta en estado de edición para guardar
Dim Registro As ADODB.Recordset 'Variable que almacena el registro activo durante la ejecución del formulario
Dim Mensaje As String 'Variable que almacena la desición tomada después de un mensaje de información
Dim cambio As Boolean 'Variable que indica si hubo cambios en el formulario
Dim iCount As Integer
Dim iPosition As Integer
Dim gOrder As String
Dim gFilter As String
Dim SQL As String
Dim gSql As String
Dim lsql As String
Dim bCambioClave As Boolean

'Procedimiento que muestra en pantalla el registro, recibiendo la llave principal id
Private Sub MostrarRegistro()
    LimpiarFormulario
    CmdCambiar.Enabled = False
    LblCount.Caption = iPosition & "/" & iCount
    txtUsuario.Text = Trim(Registro("usuario") & "")
    txtCedula.Text = Trim(Registro("cedula") & "")
    txtNombre.Text = Trim(Registro("nombre") & "")
    txtApellido.Text = Trim(Registro("apellido") & "")
    txtTelefono.Text = Trim(Registro("telefono") & "")
    'txtCelular.Text = Trim(Registro("celular") & "")
    'txtEmail.Text = Trim(Registro("email") & "")
    txtDireccion.Text = Trim(Registro("direccion") & "")
    'txtlugar.Text = Trim(Registro("lugar") & "")
End Sub
'función que se encarga de verificar  si los datos importantes no contienen datos en blanco
Private Function ValidarCampos() As Boolean
Dim RUsuario As ADODB.Recordset
    
    txtCedula.Text = Replace(txtCedula.Text, ".", "")
    
    
    ValidarCampos = True
    If Trim(txtUsuario.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Nombre de Usuario"
       txtUsuario.SetFocus
       Exit Function
    End If
    If Trim(txtCedula.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Cédula"
       txtCedula.SetFocus
       Exit Function
    End If
    If Trim(txtNombre.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Nombre", "Manejador de Usuarios", Me
       txtNombre.SetFocus
       Exit Function
    End If
    SQL = "SELECT cedula FROM usuario " _
    & " WHERE Ucase(cedula)='" & UCase(Trim(txtCedula.Text)) & "' "
    Set RUsuario = New ADODB.Recordset
    ExecuteSql RUsuario, SQL
    If gError = 0 Then
       If Not RUsuario.BOF And Not Editar Then
           MsgBox "La Cédula Ya Existe", "Manejador de Usuarios"
           txtCedula.SetFocus
           SendKeys "{HOME}+{END}"
           ValidarCampos = False
           RUsuario.Close
           Set RUsuario = Nothing
           Exit Function
       End If
       RUsuario.Close
       
    End If
    
    Set RUsuario = Nothing
    SQL = "SELECT cedula FROM usuario " _
    & " WHERE Ucase(usuario)='" & UCase(Trim(txtUsuario.Text)) & "' "
    Set RUsuario = New ADODB.Recordset
    ExecuteSql RUsuario, SQL
    If gError = 0 Then
       If Not RUsuario.BOF And Not Editar Then
           MsgBox "El Usuario Ya Existe", "Manejador de Usuarios"
           txtUsuario.SetFocus
           SendKeys "{HOME}+{END}"
           ValidarCampos = False
           RUsuario.Close
           Set RUsuario = Nothing
           Exit Function
       End If
       RUsuario.Close
       
    End If
    Set RUsuario = Nothing
    
End Function

Private Sub LimpiarFormulario() 'Limpia los controles  del formulario
    txtUsuario.Text = ""
    txtNombre.Text = ""
    txtApellido.Text = ""
    txtDireccion.Text = ""
    txtTelefono.Text = ""
    txtClave.Text = ""
    txtCedula.Text = ""
End Sub
'Guarda o Actualiza el registro
Private Sub GuardarRegistro()
Dim ilast As Long
    If Editar Then
       SQL = "UPDATE usuario SET usuario='" & Trim(txtUsuario.Text) & "', " _
       & " apellido='" & Trim(txtApellido.Text) & "',telefono='" & Trim(txtTelefono.Text & " ") & "', " _
       & " direccion='" & Trim(txtDireccion.Text) & "',cedula='" & Trim(txtCedula.Text) & "' WHERE id=" & Registro("id")
       BaseExecute SQL
       If bCambioClave Then
            SQL = "UPDATE usuario SET clave='" & MD5(Trim(txtClave.Text)) & "', nombre='" & Trim(txtNombre.Text) & "' " _
                & "WHERE id=" & Registro("id")
            BaseExecute SQL
       End If
       If gError = 0 Then
          MsgBox "Usuario Actualizado"
          
       End If
    Else
      SQL = "INSERT INTO usuario (cedula,nombre,apellido,telefono,direccion,usuario,clave,ultimo_ingreso) VALUES ('" & Trim(txtCedula.Text) & "'," _
      & "'" & Trim(txtNombre.Text) & "','" & Trim(txtApellido.Text) & "','" & Trim(txtTelefono.Text) & "'," _
      & "'" & Trim(txtDireccion.Text) & "','" & Trim(txtUsuario.Text) & "','" & MD5(Trim(txtClave.Text)) & "','" & getDate & "')"
      BaseExecute SQL
      If gError = 0 Then
         ilast = getLastID
         MsgBox "Usuario Incluido"
         Registro.Close
         CargarRegistros
         SeekReg Registro, ilast, iPosition
         MostrarRegistro
      End If
     End If
End Sub

Private Sub Desbloquear()
    FraUsuario.Enabled = True
    FraControles.Enabled = False
    txtUsuario.SetFocus
    CmdEditar.Enabled = False
    CmdBuscar.Enabled = False
    CmdEliminar.Caption = "&Cancelar"
    CmdSalir.Enabled = False
    If Editar Then
       CmdEditar.Caption = "&Guardar"
       CmdEliminar.Caption = "&Cancelar"
       CmdEliminar.Enabled = True
       CmdEditar.Enabled = True
       CmdSalir.Enabled = False
       CmdNuevo.Enabled = False
     Else
        CmdNuevo.Caption = "&Guardar"
        CmdEliminar.Caption = "&Cancelar"
        CmdNuevo.Enabled = True
        CmdEliminar.Enabled = True
        CmdEditar.Enabled = False
        
        CmdSalir.Enabled = False
    End If
End Sub


'Habilita el formulario para acceder a los campos
Private Sub Bloquear()
    FraUsuario.Enabled = False
    FraControles.Enabled = True
    CmdEditar.Enabled = True
    CmdEditar.Caption = "E&ditar"
    CmdNuevo.Enabled = True
    CmdNuevo.Caption = "&Nuevo"
    CmdBuscar.Enabled = True
    'cmdListados.Enabled = True
    CmdEliminar.Caption = "&Eliminar"
    
    CmdSalir.Enabled = True
End Sub


'Procedimiento para ir al anterior registro
Private Sub CmdAnterior_Click()

    If Not Registro.BOF Then
         Registro.MovePrevious
         iPosition = iPosition - 1
         If Registro.BOF Then
            Registro.MoveFirst
            iPosition = 1
         End If
    MostrarRegistro
    End If
    
End Sub
Public Sub Busque(Criterio As String, countCriterio As String)
Dim R1 As ADODB.Recordset
Dim lsql As String

    If Criterio <> "" Then
       lsql = "SELECT count(*) FROM  usuario "
        
        lsql = lsql & " WHERE (" & countCriterio & ")"
        gFilter = countCriterio
        CmdBuscar.Caption = "&Buscar*"
        Set R1 = New ADODB.Recordset
        ExecuteSql R1, lsql
        iCount = R1(0)
        If iCount = 0 Then
            LimpiarFormulario
            LblCount.Caption = "0/0"
            MsgBox "No se encontraron equivalencias en la búsqueda"
            QuitarFilter
            Exit Sub
        End If
        iPosition = 1
        With Registro
            .Filter = Criterio
        End With
        MostrarRegistro
    End If
End Sub

Public Sub QuitarFilter()
Dim lsql As String
Dim Reg1 As ADODB.Recordset

    With Registro
        .Filter = ""
        .Requery
        gFilter = ""
        CmdBuscar.Caption = "&Buscar"
        If Not .BOF Then .MoveFirst
    End With
    lsql = "SELECT COUNT(*) FROM usuario "
    Set Reg1 = New ADODB.Recordset
    ExecuteSql Reg1, lsql
    iCount = Reg1(0)
    iPosition = 1
    Reg1.Close
    Set Reg1 = Nothing
    MostrarRegistro
End Sub

Public Function ActivatedQuitar() As Boolean
    With Registro
        If .Filter <> 0 Then
            ActivatedQuitar = True
        Else
            ActivatedQuitar = False
        End If
    End With

End Function
Private Sub CmdBuscar_Click()
Dim i As Integer
Dim frmBuscar As frm_Busqueda
Dim ElemBusq As Integer

  gBusqueda(0, 0) = "usuario"
  gBusqueda(0, 1) = dbText
  gBusqueda(0, 2) = "Usuario"
  gBusqueda(0, 3) = "usuario"
  gBusqueda(0, 4) = "usuario"
   
  gBusqueda(1, 0) = "nombre"
  gBusqueda(1, 1) = dbText
  gBusqueda(1, 2) = "Nombre"
  gBusqueda(1, 3) = "nombre"
  gBusqueda(1, 4) = "usuario"
  
  gBusqueda(2, 0) = "apellido"
  gBusqueda(2, 1) = dbText
  gBusqueda(2, 2) = "Apellido"
  gBusqueda(2, 3) = "apellido"
  gBusqueda(2, 4) = "usuario"
  
  gBusqueda(3, 0) = "cedula"
  gBusqueda(3, 1) = dbText
  gBusqueda(3, 2) = "Cédula"
  gBusqueda(3, 3) = "cedula"
  gBusqueda(3, 4) = "usuario"
  
  
  gBusqueda(4, 0) = "telefono"
  gBusqueda(4, 1) = dbText
  gBusqueda(4, 2) = "Teléfono"
  gBusqueda(4, 3) = "telefono"
  gBusqueda(4, 4) = "usuario"
  
  

  Set frmBuscar = New frm_Busqueda
  ElemBusq = 4
  frmBuscar.Tag = Me.Name
  
  For i = 0 To ElemBusq
     frmBuscar.CmbCampo1.List(i) = gBusqueda(i, 2)
     frmBuscar.CmbCampo2.List(i) = gBusqueda(i, 2)
     frmBuscar.CmbCampo1.ItemData(i) = gBusqueda(i, 1)
     frmBuscar.CmbCampo2.ItemData(i) = gBusqueda(i, 1)
  Next i
  frmBuscar.CmbCampo1.ListIndex = 0
  frmBuscar.CmbCampo2.ListIndex = 0
  frmBuscar.Top = Me.Top
  frmBuscar.Left = Me.Left + Me.Width - 2500
  frmBuscar.Caption = "Búsqueda de Usuarios"
  frmBuscar.Show 0, Me
  Set frmBuscar = Nothing
End Sub

Private Sub CmdCambiar_Click()
    txtClave.Locked = False
    SQL = "UPDATE usuario SET clave='" & MD5(Trim(txtClave.Text)) & "', nombre='" & Trim(txtNombre.Text) & "' " _
            & "WHERE id=" & Registro("id")
    BaseExecute SQL
End Sub

'Procedimiento para Editar y Guardar un registro
Private Sub cmdEditar_Click()
Dim ilast As Long
   Editar = True 'Se establece verdadero para indicar que se está editando un registro
    If CmdEditar.Caption = "E&ditar" Then
        CmdCambiar.Enabled = True
        CmdEditar.Caption = "&Guardar"
        Desbloquear
        CmdNuevo.Enabled = False
        CmdEditar.Enabled = True
    Else
        If ValidarCampos Then
           CmdEditar.Caption = "E&ditar"
           GuardarRegistro
           ilast = Registro("id")
           Registro.Close
           CargarRegistros
           SeekReg Registro, ilast, iPosition
           MostrarRegistro
        End If
  End If
End Sub
'Procedimiento para Eliminar un registro de la tabla o cancelar una acción
Private Sub CmdEliminar_Click()
Dim SQL As String

    If CmdEliminar.Caption = "&Eliminar" Then
       SQL = "DELETE FROM usuario WHERE id=" & Registro("id")
       BaseExecute SQL
       LimpiarFormulario
       Registro.Close
       CargarRegistros
     Else
      Bloquear
    End If
    Registro.Close
    CargarRegistros
  
End Sub


Private Sub cmdListados_Click()
Dim forma As frm_Reporte
    Set forma = New frm_Reporte
    forma.Caption = "LISTADO DE USUARIOS"
    SQL = "SELECT * FROM usuario"
    If gFilter = "" Then
       gFilter = " id_cargo=3"
      Else
       gFilter = " id_cargo=3 AND " & gFilter
    End If
    forma.UpdateReport SQL, gFilter, "Rptusuarios.rpt", False, "LISTADO USUARIOS", False
    forma.Show
End Sub

Private Sub CmdNuevo_Click()
   Editar = False
     If CmdNuevo.Caption = "&Nuevo" Then
        Desbloquear
        CmdCambiar.Enabled = False
        LimpiarFormulario
        CmdNuevo.Caption = "&Guardar"
        iPosition = iCount
        LblCount.Caption = iPosition & "/" & iCount
      Else
         If ValidarCampos Then
            CmdNuevo.Caption = "&Nuevo"
            Bloquear
            GuardarRegistro
         End If
     End If
End Sub


'Procedimiento para avanzar al primer formulario
Private Sub CmdPrimero_Click()

    If Not Registro.BOF Then
       Registro.MoveFirst
       iPosition = 1
       MostrarRegistro
    End If
    
End Sub

'Procedimiento que cierra el formulario
Private Sub cmdSalir_Click()
    Unload Me
End Sub
'Procedimiento para ir al siguiente registro
Private Sub CmdSiguiente_Click()

 If Not Registro.EOF Then
    Registro.MoveNext
    iPosition = iPosition + 1
    If Registro.EOF Then
       iPosition = iCount
       Registro.MoveLast
    End If
  MostrarRegistro
 End If
 
End Sub
'Procedimiento para ir al último registro
Private Sub CmdUltimo_Click()

 If Not Registro.EOF Then
    Registro.MoveLast
    iPosition = iCount
    MostrarRegistro
 End If
 
End Sub
'Procedimiento que carga los registros en la variable Registro
Private Sub CargarRegistros()
Dim RMax As ADODB.Recordset

    lsql = "SELECT Count(*) FROM usuario "
    If gFilter <> "" Then lsql = lsql & " WHERE " & gFilter
    Set RMax = New ADODB.Recordset
    ExecuteSql RMax, lsql
    If gError = 0 Then
       If Not RMax.BOF Then
          iCount = RMax(0)
          iPosition = 1
          If iCount = 0 Then
             Registro.Filter = ""
             gFilter = ""
             CmdBuscar.Caption = "&Buscar"
             lsql = "SELECT Count(*) FROM usuario "
             RMax.Close
             ExecuteSql RMax, lsql
             iCount = RMax(0)
          End If
          gSql = "SELECT * FROM usuario "
          gOrder = " usuario.apellido ASC "
          lsql = gSql & " ORDER BY " & gOrder
          Bloquear
          ExecuteSql Registro, lsql
          If gError = 0 Then
             If Not Registro.BOF Then
                MostrarRegistro
              Else
               LimpiarFormulario
               cmdListados.Enabled = False
               CmdEditar.Enabled = False
               CmdBuscar.Enabled = False
               CmdEliminar.Enabled = False
               LblCount.Caption = 0 & "/" & 0
             End If
          End If
       End If
    End If
    RMax.Close
    Set RMax = Nothing

End Sub

Private Sub Form_Load()
    Set Registro = New ADODB.Recordset
    gFilter = ""
        CargarRegistros
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Registro.Close
    Set Registro = Nothing
End Sub



