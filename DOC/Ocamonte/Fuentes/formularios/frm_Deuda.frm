VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "txteditor.ocx"
Begin VB.Form frm_Deuda 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Deudas"
   ClientHeight    =   2685
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5010
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2685
   ScaleWidth      =   5010
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Height          =   525
      Left            =   120
      TabIndex        =   13
      Top             =   2130
      Width           =   4845
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
         Height          =   285
         Left            =   2700
         TabIndex        =   15
         Top             =   180
         Width           =   1275
      End
      Begin VB.CommandButton cmdAceptar 
         Caption         =   "Aceptar"
         Height          =   285
         Left            =   690
         TabIndex        =   14
         Top             =   180
         Width           =   1275
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1995
      Left            =   120
      TabIndex        =   5
      Top             =   90
      Width           =   4845
      Begin TxtEditor.TxtEdit txtMes 
         Height          =   315
         Left            =   2520
         TabIndex        =   2
         Top             =   900
         Width           =   2205
         _ExtentX        =   3889
         _ExtentY        =   556
         MaxLength       =   2
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin VB.TextBox txtValor 
         Height          =   285
         Left            =   180
         TabIndex        =   1
         Top             =   930
         Width           =   2175
      End
      Begin VB.ComboBox cmbDeuda 
         Height          =   315
         Left            =   180
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   390
         Width           =   2715
      End
      Begin TxtEditor.TxtEdit txtTotal2 
         Height          =   315
         Left            =   180
         TabIndex        =   3
         Top             =   1560
         Width           =   2205
         _ExtentX        =   3889
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   -1  'True
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin TxtEditor.TxtEdit txtCuota 
         Height          =   315
         Left            =   2550
         TabIndex        =   4
         Top             =   1560
         Width           =   2235
         _ExtentX        =   3942
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   -1  'True
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin MSMask.MaskEdBox txtCodigo 
         Height          =   315
         Left            =   3030
         TabIndex        =   0
         Top             =   390
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
      Begin VB.Label lblMensaje 
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   990
         TabIndex        =   16
         Top             =   720
         Width           =   1365
      End
      Begin VB.Label Label4 
         Caption         =   "Cuotas de:"
         Height          =   225
         Left            =   2580
         TabIndex        =   12
         Top             =   1350
         Width           =   1455
      End
      Begin VB.Label Label3 
         Caption         =   "Total a Financiar"
         Height          =   225
         Left            =   180
         TabIndex        =   11
         Top             =   1380
         Width           =   1455
      End
      Begin VB.Label lblTotal 
         Caption         =   "Valor"
         Height          =   225
         Left            =   180
         TabIndex        =   10
         Top             =   750
         Width           =   525
      End
      Begin VB.Label lblMeses 
         Caption         =   "Financiación (Meses)"
         Height          =   225
         Left            =   2520
         TabIndex        =   9
         Top             =   720
         Width           =   1725
      End
      Begin VB.Label Label2 
         Caption         =   "Tipo de Deuda"
         Height          =   225
         Left            =   180
         TabIndex        =   8
         Top             =   180
         Width           =   1155
      End
      Begin VB.Label Label1 
         Caption         =   "Código"
         Height          =   225
         Left            =   2940
         TabIndex        =   6
         Top             =   180
         Width           =   1155
      End
   End
End
Attribute VB_Name = "frm_Deuda"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim fRata As Currency
Dim id As Long


Private Sub ValidarCodigo()
Dim r As ADODB.Recordset
Dim SQL As String
Dim strCodigo As String
    
    strCodigo = Mid(txtCodigo.Text, 1, 4) & "-" & Mid(txtCodigo.Text, 5, 4) & "-" & Mid(txtCodigo.Text, 9, 1)
    
    SQL = "SELECT codigo FROM suscriptor WHERE codigo='" & PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text)) & "'"
    Set r = New ADODB.Recordset
    ExecuteSql r, SQL
    
    If gError = 0 Then
       If r.BOF Then
          MsgBox "El código No existe ", vbCritical
          'txtCodigo.SetFocus
       End If
       r.Close
    End If
    Set r = Nothing
                 
End Sub

Private Sub LimpiarDatos()
    
    
    txtMes.Text = ""
    txtValor.Text = ""
    txtTotal2.Text = ""
    txtCuota.Text = ""
    
End Sub

Private Sub BuscarDeuda()
'Dim R1 As ADODB.Recordset
'Dim SQL As String
'
'    SQL = "SELECT deuda_suscriptor.* FROM suscriptor INNER JOIN " _
'    & " (deuda_suscriptor INNER JOIN control_deuda ON deuda_suscriptor.id = control_deuda.id) " _
'    & " ON suscriptor.id = deuda_suscriptor.id_suscriptor WHERE deuda_suscriptor.id_deuda=" & cmbDeuda.ItemData(cmbDeuda.ListIndex) & " " _
'    & " AND suscriptor.codigo='" & PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text)) & "'"
'    Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    LimpiarDatos
'    If gError = 0 Then
'       If Not R1.BOF Then
'          txtMes.Text = R1("ncuotas")
'          txtCuota.Text = R1("valor_cuota")
'          txtTotal2.Text = R1("valor_deuda")
'          R1.Close
'       End If
'    End If
'    Set R1 = Nothing
End Sub

Private Sub cmdAceptar_Click()
    GuardarDeuda
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub CargarDeudas()
Dim SQL As String

    SQL = "SELECT * FROM deuda"
    LlenarCombo cmbDeuda, SQL
    
    If cmbDeuda.ListCount > 0 Then cmbDeuda.ListIndex = 0
End Sub

Private Sub Form_Load()
    CargarDeudas
End Sub

Private Function ValidarDatos() As Boolean
Dim SQL As String
Dim R1 As ADODB.Recordset

    ValidarDatos = True
    SQL = "SELECT * FROM suscriptor WHERE codigo='" & PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text)) & "'"
    Set R1 = New ADODB.Recordset
    ExecuteSql R1, SQL
    If gError = 0 Then
       If R1.BOF Then
          ValidarDatos = False
          R1.Close
          Set R1 = Nothing
          MsgBox "No Existe el código"
          txtCodigo.SetFocus
          Exit Function
       End If
       R1.Close
    End If
    
        
'    SQL = "SELECT * FROM deuda_suscriptor,suscriptor WHERE deuda_suscriptor.id_deuda=" & cmbDeuda.ItemData(cmbDeuda.ListIndex) & " " _
'    & " AND deuda_suscriptor.id_suscriptor=suscriptor.id AND suscriptor.sistema=" & Val(txtSistema.Text)
'
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'       If Not R1.BOF Then
'          ValidarDatos = False
'          R1.Close
'          Set R1 = Nothing
'          MsgBox "Ya existe la Deuda"
'          cmbDeuda.SetFocus
'          Exit Function
'       End If
'       R1.Close
'
'    End If
'    Set R1 = Nothing
        
        
    If cmbDeuda.ListIndex = -1 Then
       ValidarDatos = False
       MsgBox "Seleccione la Deuda"
       Exit Function
    End If
       
    If Val(txtMes.Text) = 0 Then
       ValidarDatos = False
       MsgBox "Falta Tiempo de Financiación"
       txtMes.SetFocus
       Exit Function
    End If
          
    If Val(txtValor.Text) = 0 Then
       ValidarDatos = False
       MsgBox "Falta Total a financiar"
       txtValor.SetFocus
       Exit Function
    End If
       
    
End Function
Private Sub GuardarDeuda()
Dim SQL As String
Dim R1 As ADODB.Recordset

    SQL = "SELECT id FROM suscriptor WHERE codigo='" & PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text)) & "'"
    Set R1 = New ADODB.Recordset
    ExecuteSql R1, SQL
    If gError = 0 Then
       If Not R1.BOF Then
          id = R1("id")
          R1.Close
       End If
    End If
    Set R1 = Nothing
    
    
    
    If ValidarDatos Then
       
       SQL = "SELECT id FROM control_deuda WHERE " _
       & " id_deuda=" & cmbDeuda.ItemData(cmbDeuda.ListIndex) & " " _
       & " AND id_suscriptor=" & id
       Set R1 = New ADODB.Recordset
       ExecuteSql R1, SQL
       If gError = 0 Then
          If Not R1.BOF Then
             If MsgBox("Intenta ingresar un tipo de deuda que ya existe." & vbCrLf & "Desea Continuar?", vbCritical + vbDefaultButton2 + vbYesNo) = vbNo Then
                R1.Close
                Set R1 = Nothing
                Exit Sub
             End If
          End If
          R1.Close
       End If
       Set R1 = Nothing
'
       
'       SQL = "DELETE FROM deuda_suscriptor WHERE id_deuda=" & cmbDeuda.ItemData(cmbDeuda.ListIndex) & " " _
'       & " AND deuda_suscriptor.id_suscriptor =" & id
'       BaseExecute SQL
       
       SQL = "INSERT INTO deuda_suscriptor (id_suscriptor,fecha,id_deuda,ncuotas,valor_cuota,valor_deuda) VALUES " _
       & " (" & id & ",'" & getDate & "'," & cmbDeuda.ItemData(cmbDeuda.ListIndex) & "," & Val(txtMes.Text) & "," _
       & " " & Val(txtCuota.Text) & "," & Val(txtTotal2.Text) & ")"
       BaseExecute SQL
       
       If gError = 0 Then
          MsgBox "Deuda Guardada", vbInformation
       End If
    End If
    
End Sub


Private Sub CalculoDeuda()
Dim fCapital As Currency
Dim iTiempo As Currency
Dim Numerador As Currency
Dim Denominador As Currency
Dim fCuota As Currency
   
   fCapital = Val(txtValor.Text)
   iTiempo = Val(txtMes.Text)
  If iTiempo = 0 Then Exit Sub
    If iTiempo = 1 Then
       Numerador = 1
       Denominador = 1
    Else
       Numerador = fRata * Exp(iTiempo * Log(fRata + 1))
       Denominador = Exp(iTiempo * Log(fRata + 1)) - 1
    End If
      If Denominador = 0 Then Exit Sub
      fCuota = (fCapital * Numerador) / Denominador
      txtCuota.Text = Round(fCuota)
      txtTotal2.Text = Round(fCuota) * iTiempo
      

End Sub

Private Sub txtCodigo_GotFocus()
    txtCodigo.Mask = "####-####"
    
    txtCodigo.SelStart = 0
    txtCodigo.SelLength = Len(txtCodigo.Mask)
End Sub
Private Sub SeleccionarInteres()
Dim SQL As String
Dim r As ADODB.Recordset
    
    SQL = "SELECT uso.PorcentajeFinanaciacion FROM uso,suscriptor WHERE uso.id=suscriptor.id_uso " _
    & " AND suscriptor.codigo='" & PonerDivisionCodigo(CompletarDigitoControl(txtCodigo.Text)) & "'"
    Set r = New ADODB.Recordset
    ExecuteSql r, SQL
    If gError = 0 Then
       If Not r.BOF Then
          fRata = r("PorcentajeFinanaciacion") / 100
       End If
       r.Close
    End If
    Set r = Nothing
    
    
End Sub
Private Sub txtCodigo_LostFocus()
    txtCodigo.Mask = "####-####-#"
    If txtCodigo.Text = "" Then Exit Sub
    txtCodigo.Text = CompletarDigitoControl(txtCodigo.Text)
    ValidarCodigo
    BuscarDeuda
    SeleccionarInteres
End Sub





Private Sub txtMes_LostFocus()
    CalculoDeuda
End Sub

Private Sub txtValor_Change()
    CalculoDeuda
End Sub

Private Sub txtValor_KeyPress(KeyAscii As Integer)
    
    If KeyAscii = 13 Then
       SendKeys "{TAB}"
    End If
    
End Sub

Private Sub txtValor_LostFocus()

    CalculoDeuda
   
End Sub
