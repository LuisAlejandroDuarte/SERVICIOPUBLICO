VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frm_ImprimirRecibos 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Impresión de Recibos"
   ClientHeight    =   2385
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4560
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2385
   ScaleWidth      =   4560
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Height          =   1635
      Left            =   90
      TabIndex        =   4
      Top             =   60
      Width           =   4425
      Begin VB.ComboBox cmbHastaCodigo 
         Height          =   315
         Left            =   150
         Style           =   2  'Dropdown List
         TabIndex        =   6
         Top             =   1080
         Width           =   4155
      End
      Begin VB.ComboBox cmbDesdeCodigo 
         Height          =   315
         Left            =   150
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   450
         Width           =   4155
      End
      Begin VB.Label Label2 
         Caption         =   "Código Final"
         Height          =   225
         Left            =   150
         TabIndex        =   8
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Código Inicial"
         Height          =   315
         Left            =   150
         TabIndex        =   7
         Top             =   150
         Width           =   1095
      End
   End
   Begin VB.Frame Frame2 
      Height          =   615
      Left            =   90
      TabIndex        =   0
      Top             =   1740
      Width           =   4425
      Begin VB.CommandButton cmdConfigurar 
         Caption         =   "Configurar"
         Height          =   375
         Left            =   1500
         TabIndex        =   3
         Top             =   150
         Width           =   1425
      End
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
         Height          =   375
         Left            =   2940
         TabIndex        =   2
         Top             =   150
         Width           =   1425
      End
      Begin VB.CommandButton Imprimir 
         Caption         =   "Imprimir"
         Height          =   375
         Left            =   60
         TabIndex        =   1
         Top             =   150
         Width           =   1425
      End
      Begin MSComDlg.CommonDialog cmgImprimir 
         Left            =   5670
         Top             =   -240
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
   End
End
Attribute VB_Name = "frm_ImprimirRecibos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim pImprimir As Printer
Dim strCodigo As String
Private Sub CuadrarIzquierda(x, y, iStr As String)
Dim i As Long
Dim sValor As String
Dim correrX As Long
Dim iDecimal As Integer

    iDecimal = InStr(1, iStr, ",", vbTextCompare)
    
    If iDecimal > 0 Then
       iDecimal = Len(Mid(iStr, iDecimal + 1))
       correrX = x + (iDecimal * 2) + 2
    Else
       correrX = x
    End If
    
    
      
    If iStr = "" Then Exit Sub
    'sValor = SiStr
    For i = Len(iStr) To 1 Step -1
        pImprimir.CurrentX = correrX
        pImprimir.CurrentY = y
        pImprimir.Print Mid(iStr, i, 1)
        correrX = correrX - 2
    Next
    
    
End Sub


Private Sub cmbDesdeCodigo_Change()
    cmbDesdeCodigo_Click
End Sub

Private Sub cmbDesdeCodigo_Click()
Dim Contador As Long
Dim Reg As ADODB.Recordset
Dim SQL As String
     Screen.MousePointer = vbHourglass
    strCodigo = " AND sistema>0"
    If cmbDesdeCodigo.ListIndex > 0 Then
       strCodigo = " AND sistema >= " & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex)
    End If
    
    cmbHastaCodigo.Enabled = True
    If cmbDesdeCodigo.ListIndex = 0 Then
       cmbHastaCodigo.Enabled = False
       cmbHastaCodigo.Clear
       Screen.MousePointer = vbDefault
       Exit Sub
    End If
    
    If cmbDesdeCodigo.ListIndex > 0 Then
        
   
        SQL = "SELECT codigo AS nombre, sistema AS id " _
        & " FROM suscriptor WHERE bloqueo=false AND " _
        & " sistema >= " & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex) & " " _
        & " ORDER BY codigo ASC"
        
        LlenarCombo cmbHastaCodigo, SQL
        
        If cmbHastaCodigo.ListCount > 0 Then cmbHastaCodigo.ListIndex = 0
        
  End If
   Screen.MousePointer = vbDefault
End Sub

Private Sub cmbHastaCodigo_Change()
    cmbHastaCodigo_Click
End Sub

Private Sub cmbHastaCodigo_Click()
    strCodigo = " AND suscriptor.sistema>=" & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex)
    If cmbHastaCodigo.ListIndex <> -1 Then
       strCodigo = strCodigo & " AND sistema<=" & cmbHastaCodigo.ItemData(cmbHastaCodigo.ListIndex)
    End If

    
End Sub

Private Sub cmdConfigurar_Click()
    Load frm_Impresion
    frm_Impresion.Show 1, Me
End Sub

Private Sub cmdSalir_Click()
Dim SQL As String
    
'    SQL = "UPDATE parametro set  fecha1='" & dtpFecha1.Value & "', fecha2='" & dtpFecha2.Value & "'," _
'    & " fecha_pago='" & dtpPago.Value & "'"
'    BaseExecute SQL
    
    Unload Me
End Sub
Private Sub Cargar_Suscriptores()
Dim Contador As Long
Dim Reg As ADODB.Recordset
Dim SQL As String

    SQL = "SELECT codigo AS nombre, sistema as id " _
    & " FROM suscriptor WHERE bloqueo=false ORDER BY codigo ASC"
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
        
       If Not Reg.BOF Then
          Contador = 0
          cmbDesdeCodigo.AddItem "TODOS"
          cmbDesdeCodigo.ItemData(Contador) = Contador
          While Not Reg.EOF
                Contador = Contador + 1
                cmbDesdeCodigo.AddItem Reg("nombre")
                cmbDesdeCodigo.ItemData(Contador) = Reg("id")
                Reg.MoveNext
          Wend
       End If
       Reg.Close
    End If
    Set Reg = Nothing
End Sub

Private Sub Command1_Click()

End Sub

Private Sub Form_Load()


    Cargar_Suscriptores
    
End Sub

Function Redondear(fTotal As Double) As Double
    
    If fTotal <> 0 Then
       Redondear = Round(fTotal, 0)
    Else
       Redondear = 0
    End If
    
End Function

Private Sub Form_Unload(Cancel As Integer)
   'SaveSetting App.Title, frm_ImprimirRecibos.Name, optContinua.Name, optContinua.Value
End Sub
Private Sub ImprimirCampos(x As Integer, y As Integer, Valor As String, tipo As Integer)
    Select Case tipo
            Case 1
                pImprimir.CurrentX = x
                pImprimir.CurrentY = y
                pImprimir.Print Valor
            Case 2
                pImprimir.CurrentX = x
                pImprimir.CurrentY = y
                CuadrarIzquierda pImprimir.CurrentX, pImprimir.CurrentY, Valor
            Case 3
                pImprimir.CurrentX = x
                pImprimir.CurrentY = y
                pImprimir.Print Format(Valor, "dd MMM yyyy")
    End Select
 
End Sub
Private Sub CamposFaltantes(strCampo As String, Valor As Variant)
Dim SQL As String
Dim R2 As ADODB.Recordset

    SQL = "SELECT X,Y,tipo FROM impresion WHERE campo='" & strCampo & "'"
    Set R2 = New ADODB.Recordset
    ExecuteSql R2, SQL
    If gError = 0 Then
        While Not R2.EOF
             If R2("X") <> 0 And R2("Y") <> 0 Then
              ImprimirCampos Val(R2("X")), Val(R2("Y")), IIf(IsNull(Valor), "", Valor), R2("tipo")
             End If
              R2.MoveNext
        Wend
        R2.Close
    End If
    Set R2 = Nothing
    
End Sub
Private Sub Imprimir_Click()
Dim SQL As String
Dim R1 As ADODB.Recordset
Dim R2 As ADODB.Recordset
Dim i As Integer
Dim j As Integer
Dim strTipoPrinter As Boolean
Dim dPeriodo1 As Date
Dim dPeriodo2 As Date
Dim strMesFacturado As String
Dim strFechaExpedicion As String
Dim strLimitePago As Date
On Error GoTo err

    Set R1 = New ADODB.Recordset
    
    cmgImprimir.CancelError = True
    cmgImprimir.ShowPrinter
    
    strTipoPrinter = GetSetting(App.Title, frm_ImprimirRecibos.Name, "optManual", vbChecked)
    dPeriodo1 = GetSetting(App.Title, frm_ImprimirRecibos.Name, "Fecha1", "01/01/2008")
    dPeriodo2 = GetSetting(App.Title, frm_ImprimirRecibos.Name, "Fecha2", "01/01/2008")
    strMesFacturado = GetSetting(App.Title, frm_ImprimirRecibos.Name, "MesFacturado", "01/01/2008")
    strFechaExpedicion = GetSetting(App.Title, frm_ImprimirRecibos.Name, "FechaExpedicion", "01/01/2008")
    strLimitePago = GetSetting(App.Title, frm_ImprimirRecibos.Name, "FechaPago", "01/01/2008")
    
      Set pImprimir = Printer
      pImprimir.ScaleMode = 6
      If cmbHastaCodigo.Enabled = False Then
        SQL = "SELECT recibos.* FROM suscriptor INNER JOIN recibos ON recibos.id=suscriptor.id " _
        & " ORDER BY suscriptor.codigo ASC"
      Else
      
        SQL = "SELECT recibos.* FROM suscriptor INNER JOIN recibos ON recibos.id=suscriptor.id " _
        & " WHERE suscriptor.codigo>='" & cmbDesdeCodigo.Text & "' AND suscriptor.codigo<='" & cmbHastaCodigo.Text & "' " _
        & " ORDER BY suscriptor.codigo ASC"
      End If
        Set R1 = New ADODB.Recordset
        ExecuteSql R1, SQL
        If gError = 0 Then
           While Not R1.EOF
                 For j = 0 To R1.Fields.count - 1
                     SQL = "SELECT X,Y,tipo FROM impresion WHERE campo='" & R1.Fields(j).Name & "'"
                     Set R2 = New ADODB.Recordset
                     ExecuteSql R2, SQL
                     If gError = 0 Then
                        While Not R2.EOF
                           If R2("X") <> 0 And R2("Y") <> 0 Then
                              ImprimirCampos Val(R2("X")), Val(R2("Y")), IIf(IsNull(R1(j)), "", R1(j)), R2("tipo")
                           End If
                           R2.MoveNext
                        Wend
                        R2.Close
                     End If
                     Set R2 = Nothing
                 Next j
                 R1.MoveNext
                     
                CamposFaltantes "Periodo1", dPeriodo1
                CamposFaltantes "Periodo2", dPeriodo2
                CamposFaltantes "LimitePago", strLimitePago
                CamposFaltantes "FechaExpedicion", strFechaExpedicion
                CamposFaltantes "MesFacturado", strMesFacturado
                If Not strTipoPrinter Then
                    pImprimir.NewPage
                Else
                   pImprimir.EndDoc
                End If
           Wend
           R1.Close
           If Not strTipoPrinter Then pImprimir.EndDoc
        End If
        Set R1 = Nothing
        
        
      

 Exit Sub
err:
    If err.Number <> 32755 Then
       MsgBox err.Number & " " & err.Description, "Impresión de Facturas", Me

    End If
End Sub
