VERSION 5.00
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "TxtEditor.ocx"
Begin VB.Form frm_login 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Entrada Servicios Públicos"
   ClientHeight    =   1815
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3675
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1815
   ScaleWidth      =   3675
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FraLogin 
      Height          =   1065
      Left            =   90
      TabIndex        =   5
      Top             =   90
      Width           =   3570
      Begin TxtEditor.TxtEdit TxtPass 
         Height          =   330
         Left            =   1320
         TabIndex        =   1
         Top             =   600
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   582
         MaxLength       =   20
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   "*"
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit TxtLogin 
         Height          =   330
         Left            =   1320
         TabIndex        =   0
         Top             =   180
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   582
         MaxLength       =   20
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin VB.Label LblClave 
         AutoSize        =   -1  'True
         Caption         =   "Clave : "
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
         Left            =   720
         TabIndex        =   7
         Top             =   720
         Width           =   525
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nombre Usuario : "
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
         Left            =   30
         TabIndex        =   6
         Top             =   240
         Width           =   1260
      End
   End
   Begin VB.Frame FraBotones 
      Height          =   600
      Left            =   90
      TabIndex        =   4
      Top             =   1200
      Width           =   3570
      Begin VB.CommandButton CmdAceptar 
         Caption         =   "&Aceptar"
         Default         =   -1  'True
         Height          =   315
         Left            =   990
         TabIndex        =   2
         Top             =   150
         Width           =   1100
      End
      Begin VB.CommandButton CmdSalir 
         Caption         =   "&Salir"
         Height          =   315
         Left            =   2130
         TabIndex        =   3
         Top             =   150
         Width           =   1100
      End
   End
End
Attribute VB_Name = "frm_login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iError As Integer

Private Sub cmdAceptar_Click()
Dim lsql As String
Dim Reg As ADODB.Recordset
Dim strClave As String

    lsql = "SELECT * " _
        & "FROM usuario " _
        & "WHERE usuario='" & TxtLogin.Text & "' "
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, lsql
    If Reg.BOF Then
        MsgBox "Usuario no existe"
        TxtLogin.SetFocus
        iError = iError + 1
        Set Reg = Nothing
        If iError > 3 Then
            Unload Me
        End If
        Exit Sub
    End If
    If IsNull(Reg("clave")) Then
       iError = iError + 1
       MsgBox "Clave Vacia"
       If iError > 3 Then
            Unload Me
       End If
       Exit Sub
    End If
    strClave = Reg("clave")
    If strClave <> MD5(TxtPass.Text) Then
        MsgBox "Clave del usuario errónea"
        TxtPass.SetFocus
        iError = iError + 1
        Reg.Close
        Set Reg = Nothing
        If iError > 3 Then
            Unload Me
        End If
        Exit Sub
    End If
    gUsuario = Reg("id")
    gIdCargo = Reg("id_cargo")
    gNameUsuario = Reg("usuario")
    'gIp = GetIPAddress
    Reg.Close
    lsql = "UPDATE usuario SET ultimo_ingreso='" & getDate() & "' WHERE id=" & gUsuario
    BaseExecute lsql
    Set Reg = Nothing
    Load mdiPrincipal
    Unload Me
    mdiPrincipal.Show
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub Form_Load()

    ConectarBase
    iError = 0
    
End Sub



