VERSION 5.00
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "txteditor.ocx"
Begin VB.Form frm_Entidad 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Entidades"
   ClientHeight    =   2190
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2190
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FraControles 
      Height          =   555
      Left            =   780
      TabIndex        =   9
      Top             =   990
      Width           =   2850
      Begin VB.CommandButton CmdUltimo 
         Height          =   300
         Left            =   2430
         Picture         =   "frm_Entidad.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdSiguiente 
         Height          =   300
         Left            =   2010
         Picture         =   "frm_Entidad.frx":02D6
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdAnterior 
         Height          =   300
         Left            =   510
         Picture         =   "frm_Entidad.frx":0611
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdPrimero 
         Height          =   300
         Left            =   120
         Picture         =   "frm_Entidad.frx":094A
         Style           =   1  'Graphical
         TabIndex        =   10
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
         TabIndex        =   14
         Top             =   195
         Width           =   975
      End
   End
   Begin VB.Frame FraBotonesfunciones 
      Height          =   555
      Left            =   90
      TabIndex        =   1
      Top             =   1590
      Width           =   4515
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
         Left            =   2664
         TabIndex        =   6
         Top             =   150
         Width           =   870
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
         Left            =   1791
         TabIndex        =   5
         Tag             =   "1"
         Top             =   150
         Width           =   870
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
         Left            =   45
         TabIndex        =   4
         Tag             =   "1"
         Top             =   150
         Width           =   870
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
         Left            =   918
         TabIndex        =   3
         Tag             =   "1"
         Top             =   150
         Width           =   870
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
         Left            =   3540
         TabIndex        =   2
         Top             =   150
         Width           =   870
      End
   End
   Begin VB.Frame fraEntidad 
      Height          =   765
      Left            =   150
      TabIndex        =   0
      Top             =   180
      Width           =   4515
      Begin TxtEditor.TxtEdit txtNombre 
         Height          =   315
         Left            =   60
         TabIndex        =   7
         Top             =   330
         Width           =   4305
         _ExtentX        =   7594
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin VB.Label Label1 
         Caption         =   "Nombre"
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
         Left            =   60
         TabIndex        =   8
         Top             =   150
         Width           =   945
      End
   End
End
Attribute VB_Name = "frm_Entidad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim Editar As Boolean 'Variable que indica si esta en estado de edición para guardar
Dim Registro As ADODB.Recordset 'Variable que almacena el registro activo durante la ejecución del formulario
Dim Mensaje As String 'Variable que almacena la desición tomada después de un mensaje de información
Dim cambio As Boolean 'Variable que indica si hubo cambios en el formulario
Dim iCount As Integer
Dim iPosition As Integer
Dim gOrder As String
Dim gFilter As String
Dim SQL As String
Dim lsql As String
Dim gSql As String
Dim bCambiarClave As Boolean

'''Procedimiento que muestra en pantalla el registro Actual
Private Sub MostrarRegistro()
    LimpiarFormulario
    
    
    txtNombre.Text = Trim(Registro("nombre")) & ""
   
    LblCount.Caption = iPosition & "/" & iCount
End Sub
'''función que se encarga de verificar  si los datos importantes no contienen datos en blanco
Function ValidarCampos() As Boolean
Dim Reg As ADODB.Recordset


   ValidarCampos = True

    If Trim(txtNombre.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Nombre Entidad"
       txtNombre.SetFocus
       Exit Function
    End If

    

    SQL = "SELECT * FROM entidad WHERE nombre='" & Trim(txtNombre.Text) & "'"
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Editar = False Then
          If Not Reg.BOF Then
            ValidarCampos = False
            MsgBox "Ya existe la Entidad"
            txtNombre.SetFocus
            Reg.Close
            Set Reg = Nothing
            Exit Function
           End If
        End If
       Reg.Close
       Set Reg = Nothing
    End If
    
End Function
Private Sub LimpiarFormulario() 'Limpia los controles  del formulario
    
    txtNombre.Text = ""
   
End Sub
'''Guarda o Actualiza el registro
Private Sub GuardarRegistro()
Dim iLas As Long
Dim ilast As Long
Dim iCodigo As String
Dim dc As Integer
    
    
    
    
    If Editar Then
       SQL = "UPDATE entidad SET nombre='" & Trim(txtNombre.Text) & "' " _
       & " WHERE id=" & Registro("id")
       
       BaseExecute SQL
       If gError = 0 Then
          MsgBox "Actualizado"
       End If
     Else
       SQL = "INSERT INTO entidad (nombre) " _
       & " VALUES ('" & Trim(txtNombre.Text) & "')"
       BaseExecute SQL
       
       ilast = getLastID
       If gError = 0 Then
          MsgBox "Incluido"
          Registro.Close
          CargarRegistros
          SeekReg Registro, ilast, iPosition
          MostrarRegistro
       End If
    End If
End Sub
'''Desbloquea el Formulario en Edición
Private Sub Desbloquear()
    fraEntidad.Enabled = True
    FraControles.Enabled = False
    txtNombre.SetFocus
    CmdEditar.Enabled = False
    CmdBuscar.Enabled = False
    CmdEliminar.Caption = "&Cancelar"
    cmdSalir.Enabled = False
    If Editar Then
       CmdEditar.Caption = "&Guardar"
       CmdEliminar.Caption = "&Cancelar"
       CmdEliminar.Enabled = True
       CmdEditar.Enabled = True
       CmdBuscar.Enabled = False
       cmdSalir.Enabled = False
       CmdNuevo.Enabled = False
    Else
        CmdNuevo.Caption = "&Guardar"
        CmdEliminar.Caption = "&Cancelar"
        CmdNuevo.Enabled = True
        CmdEliminar.Enabled = True
        CmdEditar.Enabled = False
        CmdBuscar.Enabled = False
        cmdSalir.Enabled = False
    End If
End Sub
'''Bloquea el formulario
Private Sub Bloquear()
    fraEntidad.Enabled = False
    FraControles.Enabled = True
    CmdEditar.Enabled = True
    CmdNuevo.Enabled = True
    CmdBuscar.Enabled = True
  
    CmdEliminar.Caption = "&Eliminar"
    cmdSalir.Enabled = True
End Sub
''
''
'''Procedimiento para ir al anterior registro
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
       lsql = "SELECT count(*) FROM  entidad " _
             & " WHERE  "
        lsql = lsql & " (" & countCriterio & ") "
        gFilter = countCriterio
        Set R1 = New ADODB.Recordset
        ExecuteSql R1, lsql
        gFilter = countCriterio
        CmdBuscar.Caption = "&Buscar*"
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
''
Public Sub QuitarFilter()
Dim lsql As String
Dim Reg1 As ADODB.Recordset

    With Registro
        .Filter = ""
         gFilter = ""
        .Requery
        CmdBuscar.Caption = "&Buscar"
        If Not .BOF Then .MoveFirst
    End With
    lsql = "SELECT COUNT(*) FROM entidad"
    Set Reg1 = New ADODB.Recordset
        ExecuteSql Reg1, lsql
    iCount = Reg1(0)
    iPosition = 1
    Reg1.Close
    Set Reg1 = Nothing
    MostrarRegistro
End Sub
''
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

 

  gBusqueda(0, 0) = "nombre"
  gBusqueda(0, 1) = dbText
  gBusqueda(0, 2) = "Nombre"
  gBusqueda(0, 3) = "nombre"
  gBusqueda(0, 4) = "entidad"

  

 


  Set frmBuscar = New frm_Busqueda
  ElemBusq = 0
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
  frmBuscar.Caption = "Búsqueda de Entidades"
  frmBuscar.Show 0, Me
  Set frmBuscar = Nothing
End Sub
Private Sub cmdEditar_Click()
Dim ilast As Long
    Editar = True 'Se establece verdadero para indicar que se está editando un registro
    If CmdEditar.Caption = "E&ditar" Then
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
Dim Mensaje
   If CmdEliminar.Caption = "&Eliminar" Then
       Mensaje = MsgBox("Desea Eliminar la  Entidad : " + txtNombre.Text, vbDefaultButton2 + vbExclamation + vbYesNo)
       If Mensaje = vbYes Then
          SQL = "DELETE FROM entidad WHERE id=" & Registro("id")
          BaseExecute SQL
          Registro.Close
          CargarRegistros
       End If
   Else
        Bloquear
        CmdNuevo.Enabled = True
        CmdNuevo.Caption = "&Nuevo"
        CmdEditar.Caption = "E&ditar"
        Registro.Close
        CargarRegistros
   End If
End Sub


Private Sub CmdNuevo_Click()
     Editar = False
     If CmdNuevo.Caption = "&Nuevo" Then
        Desbloquear
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
''
''
'''Procedimiento para avanzar al primer formulario
Private Sub CmdPrimero_Click()
    If Not Registro.BOF Then
       Registro.MoveFirst
       iPosition = 1
       MostrarRegistro
    End If
End Sub
''
'''Procedimiento que cierra el formulario
''Private Sub cmdSalir_Click()
''    Unload Me
''End Sub
'''Procedimiento para ir al siguiente registro
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
'''Procedimiento que carga los registros en la variable Registro
Private Sub CargarRegistros()
Dim RMax As ADODB.Recordset

    lsql = "SELECT Count(*) FROM entidad "
    If gFilter <> "" Then lsql = lsql & " AND " & gFilter
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
             lsql = "SELECT Count(*) FROM entidad "
             RMax.Close
             ExecuteSql RMax, lsql
             iCount = RMax(0)
          End If
          gSql = "SELECT * FROM entidad"
          gOrder = " nombre "
          lsql = gSql & " ORDER BY " & gOrder
          Bloquear
          ExecuteSql Registro, lsql
          If gError = 0 Then
             If Not Registro.BOF Then
                MostrarRegistro
              Else
               LimpiarFormulario
               
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
'
Private Sub Form_Load()

    Set Registro = New ADODB.Recordset
    gFilter = ""
        CargarRegistros
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub




Private Sub Form_Unload(Cancel As Integer)
    Registro.Close
    Set Registro = Nothing
End Sub
