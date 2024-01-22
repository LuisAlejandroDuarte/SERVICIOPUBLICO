VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "TxtEditor.ocx"
Begin VB.Form frm_Suscriptor 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Suscriptores"
   ClientHeight    =   7545
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8835
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7545
   ScaleWidth      =   8835
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox chkUrbano 
      Caption         =   "Urbano"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1590
      TabIndex        =   35
      Top             =   2130
      Width           =   1095
   End
   Begin VB.Frame FraControles 
      Height          =   555
      Left            =   2640
      TabIndex        =   24
      Top             =   4920
      Width           =   2850
      Begin VB.CommandButton CmdPrimero 
         Height          =   300
         Left            =   120
         Picture         =   "frm_Suscriptor.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdAnterior 
         Height          =   300
         Left            =   510
         Picture         =   "frm_Suscriptor.frx":033F
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdSiguiente 
         Height          =   300
         Left            =   2010
         Picture         =   "frm_Suscriptor.frx":0678
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdUltimo 
         Height          =   300
         Left            =   2430
         Picture         =   "frm_Suscriptor.frx":09B3
         Style           =   1  'Graphical
         TabIndex        =   25
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
         TabIndex        =   29
         Top             =   180
         Width           =   975
      End
   End
   Begin VB.Frame FraBotonesfunciones 
      Height          =   585
      Left            =   -60
      TabIndex        =   17
      Top             =   5640
      Width           =   8670
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
         Left            =   4374
         TabIndex        =   23
         Top             =   180
         Width           =   1365
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
         Left            =   2946
         TabIndex        =   22
         Tag             =   "1"
         Top             =   180
         Width           =   1365
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
         Left            =   90
         TabIndex        =   21
         Tag             =   "1"
         Top             =   180
         Width           =   1365
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
         Left            =   1518
         TabIndex        =   20
         Tag             =   "1"
         Top             =   180
         Width           =   1365
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
         Left            =   7230
         TabIndex        =   19
         Top             =   180
         Width           =   1365
      End
      Begin VB.CommandButton cmdListados 
         Caption         =   "&Listados"
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
         Left            =   5802
         TabIndex        =   18
         Tag             =   "1"
         Top             =   180
         Width           =   1365
      End
   End
   Begin VB.Frame fraSuscriptor 
      Height          =   4065
      Left            =   0
      TabIndex        =   13
      Top             =   90
      Width           =   8715
      Begin VB.CheckBox chkResidencial 
         Caption         =   "Residencial"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1530
         TabIndex        =   36
         Top             =   1800
         Width           =   1095
      End
      Begin VB.CheckBox chkinquilinato 
         Caption         =   "Inquilinato"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   150
         TabIndex        =   6
         Top             =   1800
         Width           =   1095
      End
      Begin VB.CheckBox chkMultiusuario 
         Caption         =   "Multiusuario"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   150
         TabIndex        =   7
         Top             =   2040
         Width           =   1365
      End
      Begin MSMask.MaskEdBox txtCodigo 
         Height          =   315
         Left            =   120
         TabIndex        =   0
         Top             =   330
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   556
         _Version        =   393216
         PromptInclude   =   0   'False
         AutoTab         =   -1  'True
         HideSelection   =   0   'False
         MaxLength       =   9
         Format          =   "0"
         Mask            =   "####-####"
         PromptChar      =   "*"
      End
      Begin TxtEditor.TxtEdit txtNombre 
         Height          =   315
         Left            =   1860
         TabIndex        =   1
         Top             =   300
         Width           =   5535
         _ExtentX        =   9763
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin VB.CheckBox chkAseo 
         Caption         =   "Aseo"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   2940
         TabIndex        =   9
         Top             =   2070
         Width           =   735
      End
      Begin VB.CheckBox chkAlca 
         Caption         =   "Alcantarillado"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   2940
         TabIndex        =   8
         Top             =   1800
         Width           =   1365
      End
      Begin VB.CheckBox chkBloquear 
         Caption         =   "Bloqueado"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4950
         TabIndex        =   11
         Top             =   1770
         Width           =   1095
      End
      Begin VB.ComboBox cmbUso 
         Height          =   315
         Left            =   7500
         Style           =   2  'Dropdown List
         TabIndex        =   12
         Top             =   870
         Width           =   1125
      End
      Begin TxtEditor.TxtEdit txtDireccion 
         Height          =   330
         Left            =   120
         TabIndex        =   2
         Top             =   840
         Width           =   7305
         _ExtentX        =   12885
         _ExtentY        =   582
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtSistema 
         Height          =   315
         Left            =   7470
         TabIndex        =   10
         Top             =   300
         Width           =   1185
         _ExtentX        =   2090
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   0   'False
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtSector 
         Height          =   315
         Left            =   120
         TabIndex        =   3
         Top             =   1380
         Width           =   2775
         _ExtentX        =   4895
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtSeccion 
         Height          =   315
         Left            =   3000
         TabIndex        =   4
         Top             =   1380
         Width           =   2775
         _ExtentX        =   4895
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtManzana 
         Height          =   315
         Left            =   5850
         TabIndex        =   5
         Top             =   1380
         Width           =   2775
         _ExtentX        =   4895
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin VB.Label Label7 
         Caption         =   "Manzana"
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
         Left            =   5850
         TabIndex        =   34
         Top             =   1200
         Width           =   915
      End
      Begin VB.Label Label6 
         Caption         =   "Sección"
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
         Left            =   3000
         TabIndex        =   33
         Top             =   1200
         Width           =   915
      End
      Begin VB.Label Label5 
         Caption         =   "Sector"
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
         TabIndex        =   32
         Top             =   1200
         Width           =   915
      End
      Begin VB.Label Label4 
         Caption         =   "Sistema"
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
         Left            =   7500
         TabIndex        =   31
         Top             =   120
         Width           =   915
      End
      Begin VB.Label Label1 
         Caption         =   "Código"
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
         TabIndex        =   30
         Top             =   120
         Width           =   915
      End
      Begin VB.Label Label3 
         Caption         =   "Uso"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   7500
         TabIndex        =   16
         Top             =   630
         Width           =   435
      End
      Begin VB.Label Label2 
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
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   660
         Width           =   915
      End
      Begin VB.Label lblNombre 
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
         Left            =   1860
         TabIndex        =   14
         Top             =   120
         Width           =   915
      End
   End
End
Attribute VB_Name = "frm_Suscriptor"
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
Dim gCodigo As String

'''Procedimiento que muestra en pantalla el registro Actual
Private Sub MostrarRegistro()
    LimpiarFormulario
    
    LblCount.Caption = iPosition & "/" & iCount
    txtCodigo.Text = Registro("codigo")
    txtNombre.Text = Trim(Registro("nombre")) & ""
    txtDireccion.Text = Trim(Registro("direccion")) & ""
    txtSistema.Text = Registro("sistema")
    chkBloquear.Value = IIf(Registro("bloqueo") = True, 1, 0)
    chkAlca.Value = IIf(Registro("alcantarillado") = True, 1, 0)
    chkMultiusuario.Value = IIf(Registro("multiusuario") = True, 1, 0)
    chkinquilinato.Value = IIf(Registro("inquilinato") = True, 1, 0)
    chkAseo.Value = IIf(Registro("aseo") = True, 1, 0)
    chkResidencial.Value = IIf(Registro("residencial") = True, 1, 0)
    chkUrbano.Value = IIf(Registro("urbano") = True, 1, 0)
    txtSector.Text = Registro("sector") & ""
    txtManzana.Text = Registro("manzana") & ""
    txtSeccion.Text = Registro("seccion") & ""
    UbicarCombo cmbUso, Registro("id_uso")
    gCodigo = txtCodigo.Text
End Sub
'''función que se encarga de verificar  si los datos importantes no contienen datos en blanco
Function ValidarCampos() As Boolean
Dim Reg As ADODB.Recordset
Dim strCodigo As String
Dim dc As Integer
Dim uno As Integer
Dim DOS As Integer
Dim TRES As Integer
   ValidarCampos = True
        
     If Trim(txtCodigo.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Código"
       txtCodigo.SetFocus
       Exit Function
    End If
        
    If Len(txtCodigo.Text) > 12 Then
       ValidarCampos = False
       MsgBox "Debe solo ingresar 12 Números"
       txtCodigo.SetFocus
       Exit Function
    End If
        
    If cmbUso.ListIndex = -1 Then
       ValidarCampos = False
       MsgBox "Falta Uso"
       cmbUso.SetFocus
       Exit Function
    End If
    
    If Trim(txtNombre.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Nombre de Suscriptor"
       txtNombre.SetFocus
       Exit Function
    End If

    If Trim(txtDireccion.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Dirección"
       txtDireccion.SetFocus
       Exit Function
    End If

'    If Trim(txtSistema.Text) = "" Then
'       ValidarCampos = False
'       MsgBox "Falta Código"
'       txtSistema.SetFocus
'       Exit Function
'    End If

    
   
    strCodigo = PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text))
    SQL = "SELECT * FROM suscriptor WHERE codigo='" & Trim(strCodigo) & "'"
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Editar And gCodigo <> txtCodigo.Text Then
          If Not Reg.BOF Then
            ValidarCampos = False
            MsgBox "Ya existe el  Código"
            txtCodigo.SetFocus
            Reg.Close
            Set Reg = Nothing
            Exit Function
           End If
        End If
       Reg.Close
    End If
    Set Reg = Nothing
    
    strCodigo = PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text))
    SQL = "SELECT * FROM suscriptor WHERE codigo='" & Trim(strCodigo) & "'"
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Editar Then
          If Not Reg.BOF Then
            ValidarCampos = False
            MsgBox "Ya existe el  Código"
            txtCodigo.SetFocus
            Reg.Close
            Set Reg = Nothing
            Exit Function
           End If
        End If
       Reg.Close
    End If
    Set Reg = Nothing
       
    
End Function
Private Sub LimpiarFormulario() 'Limpia los controles  del formulario
    txtCodigo.Text = ""
    
    txtNombre.Text = ""
    txtDireccion.Text = ""
    chkBloquear.Value = 0
    chkAlca.Value = 0
    chkAseo.Value = 0
    txtSistema.Text = ""
    txtSeccion.Text = ""
    txtManzana.Text = ""
    txtSector.Text = ""
    cmbUso.ListIndex = -1
End Sub
'''Guarda o Actualiza el registro
Private Sub GuardarRegistro()
Dim iLas As Long
Dim ilast As Long
Dim iCodigo As String
Dim dc As Integer
Dim R1 As ADODB.Recordset
Dim uno As Integer
Dim DOS As Integer
Dim TRES As Integer
    
     
     
    iCodigo = PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text))
    
    
    If Editar Then
       SQL = "UPDATE suscriptor SET codigo='" & iCodigo & "', " _
       & " nombre='" & Trim(txtNombre.Text) & "',direccion='" & Trim(txtDireccion.Text) & "'," _
       & " alcantarillado=" & chkAlca.Value & ", aseo=" & chkAseo.Value & ", " _
       & " bloqueo=" & chkBloquear.Value & ",id_uso=" & cmbUso.ItemData(cmbUso.ListIndex) & ",sistema=" & Val(txtSistema.Text) & ", " _
       & " sector='" & Trim(txtSector.Text) & "', seccion='" & Trim(txtSeccion.Text) & "',manzana='" & Trim(txtManzana.Text) & "', " _
       & " multiusuario=" & chkMultiusuario.Value & ",inquilinato=" & chkinquilinato.Value & ",residencial=" & chkResidencial.Value & ",urbano=" & chkUrbano.Value & " " _
       & " WHERE id=" & Registro("id")
       
       BaseExecute SQL
       If gError = 0 Then
          MsgBox "Actualizado"
       End If
     Else
       
      SQL = "SELECT Max(sistema) FROM suscriptor "
      Set R1 = New ADODB.Recordset
        ExecuteSql R1, SQL
      If gError = 0 Then
         If Not R1.BOF Then
            txtSistema.Text = R1(0) + 1
         End If
         R1.Close
      End If
      Set R1 = Nothing
      
       SQL = "INSERT INTO suscriptor (codigo,nombre,direccion,id_uso,alcantarillado,aseo,bloqueo," _
       & " sistema,seccion,manzana,sector,multiusuario,inquilinato,residencial,urbano) " _
       & " VALUES ('" & Trim(iCodigo) & "','" & Trim(txtNombre.Text) & "','" & Trim(txtDireccion.Text) & "'," _
       & " " & cmbUso.ItemData(cmbUso.ListIndex) & "," & chkAlca.Value & "," & chkAseo.Value & "," _
       & " " & chkBloquear.Value & "," & Val(txtSistema.Text) & ",'" & Trim(txtSeccion.Text) & "'," _
       & " '" & Trim(txtManzana.Text) & "','" & Trim(txtSector.Text) & "'," & chkMultiusuario.Value & "," & chkinquilinato.Value & "," & chkResidencial.Value & "," & chkUrbano.Value & " )"
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
    fraSuscriptor.Enabled = True
    FraControles.Enabled = False
    txtSistema.SetFocus
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
    fraSuscriptor.Enabled = False
    FraControles.Enabled = True
    CmdEditar.Enabled = True
    CmdNuevo.Enabled = True
    CmdBuscar.Enabled = True
    cmdListados.Enabled = True
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
       lsql = "SELECT count(*) FROM  suscriptor " _
             & " WHERE  "
        lsql = lsql & " (" & countCriterio & ") "
        gSql = "SELECT * FROM suscriptor INNER JOIN uso " _
        & " ON uso.id=suscriptor.id_uso"
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
            gSql = gSql & " WHERE " & countCriterio
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
        gSql = "SELECT * FROM suscriptor INNER JOIN uso " _
        & " ON uso.id=suscriptor.id_uso"
        If Not .BOF Then .MoveFirst
    End With
    lsql = "SELECT COUNT(*) FROM suscriptor"
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
           gSql = "SELECT suscriptor.codigo AS Codigo,suscriptor.nombre AS nombre, " _
          & " suscriptor.sistema as Sistema,suscriptor.direccion AS Direccion, " _
          & " suscriptor.id_uso,suscriptor.sector,suscriptor.seccion,suscriptor.manzana, " _
          & " suscriptor.inquilinato,suscriptor.residencial,suscriptor.urbano,suscriptor.multiusuario," _
          & " suscriptor.aseo,suscriptor.alcantarillado,suscriptor.bloqueo FROM suscriptor INNER JOIN uso ON " _
          & " uso.id=suscriptor.id_uso"
        End If
    End With

End Function
Private Sub CmdBuscar_Click()
Dim i As Integer
Dim frmBuscar As frm_Busqueda
Dim ElemBusq As Integer


  gBusqueda(0, 0) = "codigo"
  gBusqueda(0, 1) = dbText
  gBusqueda(0, 2) = "Código"
  gBusqueda(0, 3) = "codigo"
  gBusqueda(0, 4) = "suscriptor"
    
  gBusqueda(1, 0) = "sistema"
  gBusqueda(1, 1) = dbLong
  gBusqueda(1, 2) = "Sistema"
  gBusqueda(1, 3) = "sistema"
  gBusqueda(1, 4) = "suscriptor"

  gBusqueda(2, 0) = "nombre"
  gBusqueda(2, 1) = dbText
  gBusqueda(2, 2) = "Nombre"
  gBusqueda(2, 3) = "nombre"
  gBusqueda(2, 4) = "suscriptor"

  gBusqueda(3, 0) = "direccion"
  gBusqueda(3, 1) = dbText
  gBusqueda(3, 2) = "Dirección"
  gBusqueda(3, 3) = "direccion"
  gBusqueda(3, 4) = "suscriptor"

  gBusqueda(4, 0) = "bloqueo"
  gBusqueda(4, 1) = dbBoolean
  gBusqueda(4, 2) = "Bloqueados"
  gBusqueda(4, 3) = "bloqueo"
  gBusqueda(4, 4) = "suscriptor"



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
  frmBuscar.Caption = "Búsqueda de Suscriptores"
  frmBuscar.Show 0, Me
  Set frmBuscar = Nothing
End Sub


Private Sub cmdEditar_Click()
Dim ilast As Long
    Editar = True 'Se establece verdadero para indicar que se está editando un registro
    If CmdEditar.Caption = "E&ditar" Then
'      txtCodigo.Text = Replace(txtCodigo.Text, "-", "")
'      txtCodigo.Text = Mid(txtCodigo.Text, 1, Len(txtCodigo.Text) - 1)
       txtCodigo.SelStart = 0
       txtCodigo.SelLength = Len(txtCodigo.Mask)
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
Dim SQL As String
Dim Reg As ADODB.Recordset
   If CmdEliminar.Caption = "&Eliminar" Then
     If MsgBox("Desea Eliminar el Suscriptor " + txtNombre.Text, vbDefaultButton2 + vbExclamation + vbYesNo) = vbYes Then
        SQL = "DELETE facturacion.*,detalle_facturacion.* FROM facturacion,detalle_facturacion WHERE facturacion.id=detalle_facturacion.id_factura " _
        & " AND detalle_facturacion.id_suscriptor=" & Registro("id")
        BaseExecute SQL
        SQL = "DELETE FROM refacturado WHERE id_suscriptor=" & Registro("id")
        BaseExecute SQL
        SQL = "DELETE FROM deuda_suscriptor WHERE id_suscriptor=" & Registro("id")
        BaseExecute SQL
        SQL = "DELETE FROM refacturado_deuda WHERE id_suscriptor=" & Registro("id")
        BaseExecute SQL
        
        SQL = "DELETE FROM temp_refacturado WHERE id_suscriptor=" & Registro("id")
        BaseExecute SQL
        SQL = "DELETE FROM temp_detalle_facturacion WHERE id_suscriptor=" & Registro("id")
        BaseExecute SQL
        SQL = "DELETE FROM temp_deuda_suscriptor WHERE id_suscriptor=" & Registro("id")
        BaseExecute SQL
        SQL = "DELETE FROM temp_refacturado_deuda WHERE id_suscriptor=" & Registro("id")
        BaseExecute SQL
        SQL = "DELETE FROM suscriptor WHERE id=" & Registro("id")
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

Private Sub cmdListados_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
    SQL = " SELECT suscriptor.nombre, suscriptor.direccion, suscriptor.sistema, " _
    & " uso.codigo, suscriptor.alcantarillado, suscriptor.aseo " _
    & " FROM suscriptor INNER JOIN uso ON suscriptor.id_uso=uso.id " _
    & " ORDER BY suscriptor.sistema"

    Screen.MousePointer = vbHourglass
    Report.UpdateReport gSql, "", "RptSuscriptor.rpt", False, "Listado de Suscriptores", False
    Screen.MousePointer = vbDefault
    Report.Show
    
End Sub

''
''
''Private Sub cmdListados_Click()
''Dim Forma As frm_Reporte
''    Set Forma = New frm_Reporte
''    SQL = "SELECT * FROM usuario"
''    Forma.Caption = "LISTADO DE ASESORES"
''    If gFilter = "" Then
''       gFilter = " id_cargo=1"
''      Else
''       gFilter = " id_cargo=1 AND " & gFilter
''    End If
''
''    Forma.UpdateReport SQL, gFilter, "Rptusuarios.rpt", "LISTADO ASESORES", False
''    Forma.Show
''End Sub
''
Private Sub CmdNuevo_Click()
     Editar = False
     If CmdNuevo.Caption = "&Nuevo" Then
        Desbloquear
       
        LimpiarFormulario
        txtCodigo.SetFocus
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

     lsql = "SELECT Count(*) FROM suscriptor INNER JOIN uso ON uso.id=suscriptor.id_uso"
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
             lsql = "SELECT Count(*) FROM suscriptor INNER JOIN uso ON uso.id=suscriptor.id_uso"
             RMax.Close
             ExecuteSql RMax, lsql
             iCount = RMax(0)
          End If
          gSql = "SELECT suscriptor.id,suscriptor.codigo AS Codigo,suscriptor.nombre AS nombre, " _
          & " suscriptor.sistema as Sistema,suscriptor.direccion AS Direccion, " _
          & " suscriptor.id_uso,suscriptor.sector,suscriptor.seccion,suscriptor.manzana, " _
          & " suscriptor.inquilinato,suscriptor.residencial,suscriptor.urbano,suscriptor.multiusuario," _
          & " suscriptor.aseo,suscriptor.alcantarillado,suscriptor.bloqueo FROM suscriptor INNER JOIN uso ON " _
          & " uso.id=suscriptor.id_uso"
          gOrder = " sistema ASC"
          lsql = gSql & " ORDER BY " & gOrder & " "
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
'
Private Sub Form_Load()
Dim R1 As ADODB.Recordset
Dim SQL As String
Dim strCodigo As String
Dim i As Integer

   

     cargarUsos
    Set Registro = New ADODB.Recordset
    gFilter = ""
        CargarRegistros
End Sub
''
''Private Sub Form_Unload(Cancel As Integer)
''    Registro.Close
''    Set Registro = Nothing
''End Sub
''
''
''
''
''
'
Private Sub cmdSalir_Click()
    Unload Me
End Sub
Private Sub cargarUsos()
Dim SQL As String
    
    SQL = "SELECT id,codigo AS Nombre FROM uso"
    LlenarCombo cmbUso, SQL
    
    
    
End Sub

Private Sub ValidarCodigo()
Dim r As ADODB.Recordset
Dim SQL As String
Dim strCodigo As String
    
    strCodigo = Mid(txtCodigo.Text, 1, 4) & "-" & Mid(txtCodigo.Text, 5, 4) & "-" & Mid(txtCodigo.Text, 9, 1)
    
    SQL = "SELECT codigo FROM suscriptor WHERE codigo='" & strCodigo & "'"
    Set r = New ADODB.Recordset
    ExecuteSql r, SQL
    
    If gError = 0 Then
       If Not r.BOF Then
          MsgBox "El código ya existe ", vbCritical
          'txtCodigo.SetFocus
       End If
       r.Close
    End If
    Set r = Nothing
                 
End Sub




Private Sub txtCodigo_GotFocus()
    txtCodigo.Mask = "####-####"
    txtCodigo.SelStart = 0
    txtCodigo.SelLength = Len(txtCodigo.Mask)
End Sub

Private Sub txtCodigo_LostFocus()
    txtCodigo.Mask = "####-####-#"
    txtCodigo.Text = CompletarDigitoControl(txtCodigo.Text)
    ValidarCodigo
End Sub


