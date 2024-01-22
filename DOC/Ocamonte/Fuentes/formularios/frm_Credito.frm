VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Begin VB.Form frm_Credito 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Nota Crédito"
   ClientHeight    =   2160
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2490
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2160
   ScaleWidth      =   2490
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Height          =   525
      Left            =   90
      TabIndex        =   5
      Top             =   1590
      Width           =   2355
      Begin VB.CommandButton cmdAceptar 
         Caption         =   "Aceptar"
         Default         =   -1  'True
         Height          =   315
         Left            =   60
         TabIndex        =   7
         Top             =   120
         Width           =   1065
      End
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
         Height          =   315
         Left            =   1230
         TabIndex        =   6
         Top             =   120
         Width           =   1065
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1455
      Left            =   90
      TabIndex        =   2
      Top             =   60
      Width           =   2355
      Begin VB.TextBox txtValor 
         Height          =   315
         Left            =   120
         TabIndex        =   1
         Top             =   1020
         Width           =   2145
      End
      Begin MSMask.MaskEdBox txtCodigo 
         Height          =   315
         Left            =   120
         TabIndex        =   0
         Top             =   390
         Width           =   2175
         _ExtentX        =   3836
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
      Begin VB.Label Label1 
         Caption         =   "Código"
         Height          =   225
         Left            =   120
         TabIndex        =   4
         Top             =   150
         Width           =   645
      End
      Begin VB.Label Label2 
         Caption         =   "Crédito"
         Height          =   225
         Left            =   120
         TabIndex        =   3
         Top             =   810
         Width           =   675
      End
   End
End
Attribute VB_Name = "frm_Credito"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strCodigo As String
Dim SQL As String
Dim idSuscriptor As Long
Dim dFecha As Date
Private Sub ValidarCodigo()
Dim R As ADODB.Recordset
Dim SQL As String
Dim strCodigo As String
    
    strCodigo = Mid(txtCodigo.Text, 1, 4) & "-" & Mid(txtCodigo.Text, 5, 4) & "-" & Mid(txtCodigo.Text, 9, 1)
    
    SQL = "SELECT codigo FROM suscriptor WHERE codigo='" & strCodigo & "'"
    Set R = New ADODB.Recordset
    ExecuteSql R, SQL
    
    If gError = 0 Then
       If R.BOF Then
          MsgBox "El código no existe ", vbCritical
          'txtCodigo.SetFocus
       End If
       R.Close
    End If
    Set R = Nothing
                 
End Sub
Private Sub txtCodigo_GotFocus()
    txtCodigo.Mask = "####-####"
    txtCodigo.SelStart = 0
    txtCodigo.SelLength = Len(txtCodigo.Mask)
End Sub

Private Sub txtCodigo_LostFocus()
    txtCodigo.Mask = "####-####-#"
    If txtCodigo.Text = "" Then Exit Sub
    txtCodigo.Text = CompletarDigitoControl(txtCodigo.Text)
    ValidarCodigo
End Sub
Private Sub cmdAceptar_Click()
Dim iUno As Integer
Dim iDos As Integer
Dim iTres As Integer
Dim iSuma As Integer
Dim iDigito As Integer
Dim Reg As ADODB.Recordset

 If Not IsNumeric(txtValor.Text) Then
    MsgBox "Falta Valor ", vbCritical
    Exit Sub
 End If
    SQL = "SELECT suscriptor.id FROM suscriptor" _
    & " WHERE suscriptor.codigo='" & PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text)) & "'"
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Reg.BOF Then
          SQL = "DELETE FROM credito WHERE id_suscriptor=" & Reg("id") & " " _
          & " AND id_fecha=" & gFecha
          BaseExecute SQL
           
          SQL = "INSERT INTO credito (id_suscriptor,id_fecha,valor) " _
          & " VALUES (" & Reg("id") & ", " _
          & " " & gFecha & "," & Val(txtValor.Text) & ")"
          BaseExecute SQL
       Else
          MsgBox "No existe el código ", vbCritical
       End If
       Reg.Close
       Set Reg = Nothing
    End If
    Unload Me
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    dFecha = getDate
End Sub

Private Sub txtsistema_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
       SendKeys "{Tab}"
    End If
End Sub

Private Sub txtSistema_LostFocus()
Dim SQL As String
Dim R1 As ADODB.Recordset

    SQL = "SELECT credito.valor FROM credito,suscriptor " _
    & " WHERE suscriptor.id=credito.id_suscriptor " _
    & " AND credito.id_fecha=" & gFecha & " " _
    & " AND suscriptor.sistema=" & Val(txtsistema.Text)
    Set R1 = New ADODB.Recordset
    ExecuteSql R1, SQL
    txtValor.Text = ""
    If gError = 0 Then
       If Not R1.BOF Then
          txtValor.Text = R1("Valor")
       End If
       R1.Close
       Set R1 = Nothing
    End If
    
End Sub


