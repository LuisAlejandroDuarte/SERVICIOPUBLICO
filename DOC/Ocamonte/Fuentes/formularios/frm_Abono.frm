VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "TxtEditor.ocx"
Begin VB.Form frm_Abono 
   Caption         =   "Abonos"
   ClientHeight    =   2250
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2175
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   2250
   ScaleWidth      =   2175
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Height          =   615
      Left            =   90
      TabIndex        =   4
      Top             =   1560
      Width           =   2025
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
         Height          =   315
         Left            =   1080
         TabIndex        =   5
         Top             =   210
         Width           =   855
      End
      Begin VB.CommandButton cmdAceptar 
         Caption         =   "Aceptar"
         Height          =   315
         Left            =   60
         TabIndex        =   2
         Top             =   210
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1455
      Left            =   90
      TabIndex        =   3
      Top             =   60
      Width           =   2025
      Begin TxtEditor.TxtEdit txtValor 
         Height          =   345
         Left            =   120
         TabIndex        =   1
         Top             =   990
         Width           =   1725
         _ExtentX        =   3043
         _ExtentY        =   609
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin MSMask.MaskEdBox txtCodigo 
         Height          =   315
         Left            =   120
         TabIndex        =   0
         Top             =   420
         Width           =   1755
         _ExtentX        =   3096
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
      Begin VB.Label Label2 
         Caption         =   "Valor"
         Height          =   225
         Left            =   120
         TabIndex        =   7
         Top             =   810
         Width           =   435
      End
      Begin VB.Label Label1 
         Caption         =   "Código Sistema"
         Height          =   225
         Left            =   120
         TabIndex        =   6
         Top             =   210
         Width           =   1155
      End
   End
End
Attribute VB_Name = "frm_Abono"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strCodigo As String
Dim SQL As String
Dim idSuscriptor As Long
Dim dFecha As Date
Private Sub ValidarCodigo()
Dim r As ADODB.Recordset
Dim SQL As String
Dim strCodigo As String
    
    strCodigo = Mid(txtCodigo.Text, 1, 4) & "-" & Mid(txtCodigo.Text, 5, 4) & "-" & Mid(txtCodigo.Text, 9, 1)
    
    SQL = "SELECT codigo FROM suscriptor WHERE codigo='" & strCodigo & "'"
    Set r = New ADODB.Recordset
    ExecuteSql r, SQL
    
    If gError = 0 Then
       If r.BOF Then
          MsgBox "El código no existe ", vbCritical
          'txtCodigo.SetFocus
       End If
       r.Close
    End If
    Set r = Nothing
                 
End Sub
Private Sub cmdAceptar_Click()
Dim iUno As Integer
Dim iDos As Integer
Dim iTres As Integer
Dim iSuma As Integer
Dim iDigito As Integer
Dim Reg As ADODB.Recordset
Dim R1 As ADODB.Recordset

 If Not IsNumeric(txtValor.Text) Then
    MsgBox "Falta Valor ", vbCritical
    Exit Sub
 End If
    SQL = "SELECT detalle_facturacion.id_factura,facturacion.pagada,facturacion.total FROM " _
    & " facturacion,detalle_facturacion,suscriptor  " _
    & " WHERE detalle_facturacion.id_factura=facturacion.id  " _
    & " AND facturacion.id_fecha=" & gFecha & "  " _
    & " AND suscriptor.id=detalle_facturacion.id_suscriptor " _
    & " AND suscriptor.codigo='" & PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text)) & "'"
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Reg.BOF Then
           If Reg("pagada") = True Then
              MsgBox "La factura se encuentra Paga"
           Else
             If Val(txtValor.Text) < Reg("total") Then
                SQL = "DELETE FROM abono WHERE id_factura=" & Reg("id_factura") & " " _
                & " AND id_fecha=" & gFecha
                BaseExecute SQL
            
                SQL = "INSERT INTO abono (id_factura,id_fecha,valor,fecha) " _
                & " VALUES (" & Reg("id_factura") & ", " _
                & " " & gFecha & "," & Val(txtValor.Text) & ",'" & dFecha & "')"
                BaseExecute SQL
                txtValor.Text = ""
                txtCodigo.Text = ""
                txtCodigo.SetFocus
             Else
                MsgBox "El Abono no debe ser Mayor que el Total de la Factura", vbCritical
             End If
           End If
       Else
          MsgBox "No existe el código ", vbCritical
       End If
       Reg.Close
       Set Reg = Nothing
    End If
    
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
Private Sub txtSistema_LostFocus()
Dim SQL As String
Dim R1 As ADODB.Recordset

    SQL = "SELECT abono.valor FROM abono,detalle_facturacion,suscriptor " _
    & " WHERE detalle_facturacion.id_factura=abono.id_factura " _
    & " AND suscriptor.id=detalle_facturacion.id_suscriptor " _
    & " AND abono.id_fecha=" & gFecha & " " _
    & " AND suscriptor.codigo='" & Trim(txtCodigo.Text) & "'"
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
