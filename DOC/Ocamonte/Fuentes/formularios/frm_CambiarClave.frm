VERSION 5.00
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "txteditor.ocx"
Begin VB.Form frm_CambiarClave 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Cambiar Clave"
   ClientHeight    =   2295
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3765
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2295
   ScaleWidth      =   3765
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FraBotones 
      Height          =   600
      Left            =   90
      TabIndex        =   7
      Top             =   1680
      Width           =   3615
      Begin VB.CommandButton CmdSalir 
         Caption         =   "&Salir"
         Height          =   315
         Left            =   2400
         TabIndex        =   9
         Top             =   180
         Width           =   1100
      End
      Begin VB.CommandButton CmdAceptar 
         Caption         =   "&Aceptar"
         Default         =   -1  'True
         Height          =   315
         Left            =   1245
         TabIndex        =   8
         Top             =   180
         Width           =   1100
      End
   End
   Begin VB.Frame FraLogin 
      Height          =   1575
      Left            =   90
      TabIndex        =   0
      Top             =   60
      Width           =   3615
      Begin TxtEditor.TxtEdit TxtCurrentPass 
         Height          =   330
         Left            =   1710
         TabIndex        =   1
         Top             =   255
         Width           =   1725
         _ExtentX        =   3043
         _ExtentY        =   582
         MaxLength       =   20
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   "*"
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit TxtPass 
         Height          =   330
         Left            =   1710
         TabIndex        =   2
         Top             =   615
         Width           =   1725
         _ExtentX        =   3043
         _ExtentY        =   582
         MaxLength       =   20
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   "*"
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit TxtConfirmacionPass 
         Height          =   330
         Left            =   1710
         TabIndex        =   3
         Top             =   1035
         Width           =   1725
         _ExtentX        =   3043
         _ExtentY        =   582
         MaxLength       =   20
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   "*"
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin VB.Label LblClave 
         AutoSize        =   -1  'True
         Caption         =   "Clave Nueva : "
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
         Left            =   645
         TabIndex        =   6
         Top             =   705
         Width           =   1005
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Clave Actual : "
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
         Left            =   630
         TabIndex        =   5
         Top             =   330
         Width           =   1020
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Confirmación clave : "
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
         Left            =   195
         TabIndex        =   4
         Top             =   1110
         Width           =   1500
      End
   End
End
Attribute VB_Name = "frm_CambiarClave"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAceptar_Click()
Dim lsql As String
Dim CurrentPass As String
Dim Reg1 As ADODB.Recordset

    Set Reg1 = New ADODB.Recordset
    lsql = "SELECT * FROM usuario WHERE id=" & gUsuario
    ExecuteSql Reg1, lsql
    CurrentPass = ""
    If Not Reg1.EOF Then
        CurrentPass = Reg1("clave")
    End If
    If CurrentPass <> MD5(TxtCurrentPass.Text) Then
        MsgBox "Clave actual incorrecta"
        Exit Sub
    End If
    If TxtPass.Text <> TxtConfirmacionPass.Text Then
        MsgBox "Confirmación de la Clave está incorrecta"
        TxtConfirmacionPass.SetFocus
        Exit Sub
    End If
    lsql = "UPDATE usuario SET clave='" & MD5(TxtPass.Text) & "' " _
        & "WHERE id=" & gUsuario & " "
    BaseExecute lsql
    MsgBox "Cambio de clave satisfactorio"
    Unload Me
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub


