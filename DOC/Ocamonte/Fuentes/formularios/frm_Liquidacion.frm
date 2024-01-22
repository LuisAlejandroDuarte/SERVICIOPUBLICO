VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frm_Liquidacion 
   Caption         =   "Liquidación"
   ClientHeight    =   7590
   ClientLeft      =   3225
   ClientTop       =   1260
   ClientWidth     =   9225
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7590
   ScaleWidth      =   9225
   WindowState     =   2  'Maximized
   Begin VB.Frame FraTabla 
      Height          =   6870
      Left            =   60
      TabIndex        =   0
      Top             =   690
      Width           =   9120
      Begin MSDataGridLib.DataGrid MfgLiquidacion 
         Height          =   5115
         Left            =   180
         TabIndex        =   7
         Top             =   1470
         Width           =   8655
         _ExtentX        =   15266
         _ExtentY        =   9022
         _Version        =   393216
         AllowUpdate     =   -1  'True
         BorderStyle     =   0
         HeadLines       =   1
         RowHeight       =   17
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   9226
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   9226
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            MarqueeStyle    =   0
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Frame Frame1 
         Caption         =   "Código Suscriptor"
         Height          =   1245
         Left            =   180
         TabIndex        =   2
         Top             =   180
         Width           =   3525
         Begin VB.ComboBox cmbHastaCodigo 
            Height          =   315
            Left            =   660
            Style           =   2  'Dropdown List
            TabIndex        =   6
            Top             =   750
            Width           =   2715
         End
         Begin VB.ComboBox cmbDesdeCodigo 
            Height          =   315
            Left            =   660
            Style           =   2  'Dropdown List
            TabIndex        =   3
            Top             =   420
            Width           =   2715
         End
         Begin VB.Label Label2 
            Caption         =   "Hasta"
            Height          =   255
            Left            =   90
            TabIndex        =   5
            Top             =   810
            Width           =   525
         End
         Begin VB.Label Label1 
            Caption         =   "Desde"
            Height          =   255
            Left            =   90
            TabIndex        =   4
            Top             =   450
            Width           =   525
         End
      End
   End
   Begin MSComctlLib.Toolbar TbrBarHerramientas 
      Align           =   1  'Align Top
      Height          =   630
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   9225
      _ExtentX        =   16272
      _ExtentY        =   1111
      ButtonWidth     =   1561
      ButtonHeight    =   953
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   7
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Visualizar"
            Key             =   "BtnVisualizar"
            Description     =   "Factura los manejos seleccionados"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Lecturas"
            Key             =   "BtnLecturas"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Liquidación"
            Key             =   "BtnLiquidar"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Cierre"
            Key             =   "BtnCierre"
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Imprimir"
            Key             =   "BtnImprimir"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Recibos"
            Key             =   "BtnRecibo"
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Salir"
            Key             =   "BtnSalir"
            Object.ToolTipText     =   "Cierra la ventana actual"
            ImageIndex      =   7
         EndProperty
      EndProperty
      BorderStyle     =   1
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   7950
         Top             =   -45
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   16
         ImageHeight     =   16
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   9
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":1D0A
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":25E4
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":2EBE
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":86B0
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":B1BA
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":10DDC
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":13E5E
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Liquidacion.frx":15B38
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_Liquidacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim SQL As String
Dim Fecha As Date
Dim strFecha As String
Dim strCodigo As String
Dim iClic As Integer
Dim bSeleccionados() As Long
Dim iFacturas() As Long
Dim ValorBasico As Double
Dim ConsumoBasico As Long
Dim ConsumoComplementario As Long
Dim ConsumoSuntuario As Long
Dim ValorSuntuario As Double
Dim ValorComplementario As Double
Dim Consumo As Long
Dim gReg As ADODB.Recordset
Dim bEntrar As Boolean
Dim iOrden(16) As Boolean
Dim lOrden As String


Private Function CalcularConsumo(actual As Long, iRango1 As Long, _
iRango2 As Long, iRango3 As Long, ValorRango1 As Double, ValorRango2 As Double, _
ValorRango3 As Double) As Double
Dim Tc, r As Double
    ValorBasico = 0
    ValorComplementario = 0
    ValorSuntuario = 0
    ConsumoBasico = 0
    ConsumoComplementario = 0
    ConsumoSuntuario = 0
    Select Case actual
            Case Is <= 0
                 ValorBasico = 0
                 ValorComplementario = 0
                 ValorSuntuario = 0
                 ConsumoBasico = 0
                 ConsumoComplementario = 0
                 ConsumoSuntuario = 0
            Case Is <= iRango1
                 ValorBasico = ValorRango1 * actual
                 ConsumoBasico = actual
            Case iRango1 + 1 To iRango2
                 ConsumoBasico = iRango1
                 r = actual - iRango1
                 ValorBasico = iRango1 * ValorRango1
                 ConsumoComplementario = r
                 ValorComplementario = r * ValorRango2
            Case Is >= iRango3
                 r = actual - iRango3
                 ConsumoBasico = iRango1
                 ConsumoComplementario = iRango2 - iRango1
                 ConsumoSuntuario = r
                 ValorBasico = iRango1 * ValorRango1
                 ValorComplementario = (iRango2 - iRango1) * ValorRango2
                 ValorSuntuario = r * ValorRango3
                 
    End Select
    Tc = ValorBasico + ValorComplementario + ValorSuntuario
    CalcularConsumo = Tc
    Consumo = actual
End Function


Private Sub Filtro()
Dim R1 As ADODB.Recordset
Dim R2 As ADODB.Recordset
Dim Datos()
Dim i As Integer
Dim strFecha As String
    
    

         Screen.MousePointer = vbHourglass

            
             strFecha = " AND FechaRefa=" & gFecha - 1
            If gFecha = 1 Then strFecha = ""
               
            
            SQL = "SELECT Sist,nombre As Nombre,codigo As Código,total As TOTAL,acueducto AS Acueducto,alcantarillado AS Alcantarillado,aseo AS Aseo,consumo AS Consumo," _
            & " contribucion AS Contribu,subsidio AS Subsi,OtroValor AS Otro,credito as Crédito,debito AS Débito,deuda AS Deuda,refacturado AS Refactu,Ajuste,iif(pagada=true,'Si','No') As Paga ,idFactura,idSuscriptor" _
            & " FROM facturacionRefacturados WHERE bloqueo=false AND " _
            & " FechaFactu=" & gFecha & strCodigo & " ORDER BY codigo ASC"
            If gReg.State = 1 Then
               gReg.Close
            End If

            
            Actualice_Datos SQL
            
            'MfgLiquidacion.Columns(3).Alignment = dbgRight
            'MfgLiquidacion.Columns(3).NumberFormat = dbDouble
             Screen.MousePointer = vbDefault
     
End Sub
Private Sub Suscriptores()
Dim Contador As Long
Dim Reg As ADODB.Recordset
    
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
   'cmbDesdeCodigo.ListIndex = 0
End Sub

Private Sub cmbDesdeCodigo_Change()
    cmbDesdeCodigo_Click
End Sub

Private Sub cmbDesdeCodigo_Click()
Dim Contador As Long
Dim Reg As ADODB.Recordset
     Screen.MousePointer = vbHourglass
    strCodigo = " AND sistema>0"
    If cmbDesdeCodigo.ListIndex > 0 Then
       strCodigo = " AND sistema >= " & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex)
    End If
    
    cmbHastaCodigo.Enabled = True
    If cmbDesdeCodigo.ListIndex = 0 Then
       cmbHastaCodigo.Enabled = False
       cmbHastaCodigo.Clear
       Filtro
       Exit Sub
    End If
    
    If cmbDesdeCodigo.ListIndex > 0 Then
        
   
        SQL = "SELECT codigo AS nombre, sistema AS id " _
        & " FROM suscriptor WHERE bloqueo=false AND " _
        & " sistema >= " & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex) & " " _
        & " ORDER BY sistema ASC"
        
        LlenarCombo cmbHastaCodigo, SQL
        
        If cmbHastaCodigo.ListCount > 0 Then cmbHastaCodigo.ListIndex = cmbHastaCodigo.ListCount - 1
        
  End If
   Screen.MousePointer = vbDefault
End Sub




Private Sub cmbFecha_Change()
    cmbFecha_Click
End Sub

Private Sub cmbFecha_Click()
    Filtro
End Sub

'Private Sub cmbFecha_Change()
'    cmbFecha_Click
'End Sub
'
'Private Sub cmbFecha_Click()
'
'    UbicarCombo cmbFecha, cmbFecha.ItemData(cmbFecha.ListIndex)
'    gFecha = cmbFecha.ItemData(cmbFecha.ListIndex)
'    Filtro
'End Sub

Private Sub cmbHastaCodigo_Change()
    cmbHastaCodigo_Click
End Sub

Private Sub cmbHastaCodigo_Click()
    strCodigo = " AND suscriptor.sistema>=" & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex)
    If cmbHastaCodigo.ListIndex <> -1 Then
       strCodigo = strCodigo & " AND sistema<=" & cmbHastaCodigo.ItemData(cmbHastaCodigo.ListIndex)
    End If
    Filtro
    
End Sub

'Private Sub Fechas()
'
'    SQL = "SELECT id,format(fecha,'mmmm yyyy') AS Nombre FROM fecha ORDER BY id DESC"
'    LlenarCombo cmbFecha, SQL
'
'End Sub
Private Sub Fechas()
Dim SQL As String

'    SQL = "SELECT id,format(fecha,'mmmm yyyy') AS Nombre FROM fecha ORDER BY id DESC"
'    LlenarCombo cmbFecha, SQL
'    If cmbFecha.ListCount > 0 Then cmbFecha.ListIndex = 0
End Sub
Private Sub Form_Load()
Dim i As Integer
Dim SQL As String
Dim R1 As ADODB.Recordset
    
'    SQL = "SELECT facturacion.id,detalle_facturacion.id_suscriptor FROM facturacion,detalle_facturacion WHERE " _
'    & " facturacion.id=detalle_facturacion.id_factura AND facturacion.pagada=0 AND facturacion.id_fecha=7"
'    Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    While Not R1.EOF
'          SQL = "UPDATE refacturado set id_factura=" & R1("id") & " " _
'          & " WHERE id_suscriptor=" & R1("id_suscriptor")
'          BaseExecute SQL
'      R1.MoveNext
'   Wend
'   R1.Close
'   Set R1 = Nothing
          
    For i = 0 To 16
        iOrden(i) = False
    Next i
    Set gReg = New ADODB.Recordset
    bEntrar = True
    
    Suscriptores
    Filtro
    'Fechas
    'If cmbFecha.ListCount > 0 Then cmbFecha.ListIndex = 0
    

End Sub
Private Sub Actualice_Datos(lsql As String)
Dim Ancho As Long
     
    Llene_TablaGrid MfgLiquidacion, lsql, gReg, "17,18"
    Ancho = MfgLiquidacion.Width
    
    Arregle_Ancho
End Sub

Private Sub Form_Resize()
Dim Ancho As Long
On Error Resume Next
    FraTabla.Width = Me.Width - 200
    FraTabla.Height = Me.Height - TbrBarHerramientas.Height - 600
    MfgLiquidacion.Height = FraTabla.Height - 1700
    MfgLiquidacion.Width = FraTabla.Width - 400
    Arregle_Ancho
End Sub
Private Sub Arregle_Ancho()
Dim Ancho As Long
On Error Resume Next
    With MfgLiquidacion
         Ancho = .Width
         .Columns(0).Width = Ancho * 0.03
         .Columns(1).Width = Ancho * 0.15
         .Columns(2).Width = Ancho * 0.08
         .Columns(3).Width = Ancho * 0.06
         .Columns(4).Width = Ancho * 0.05
         .Columns(5).Width = Ancho * 0.05
         .Columns(6).Width = Ancho * 0.05
         .Columns(7).Width = Ancho * 0.06
         .Columns(8).Width = Ancho * 0.06
         .Columns(9).Width = Ancho * 0.05
         .Columns(10).Width = Ancho * 0.05
         .Columns(11).Width = Ancho * 0.05
         .Columns(12).Width = Ancho * 0.05
         .Columns(13).Width = Ancho * 0.05
         .Columns(14).Width = Ancho * 0.06
         .Columns(15).Width = Ancho * 0.03
         .Columns(16).Width = Ancho * 0.03
         .Columns(17).Width = 0
         .Columns(18).Width = 0
        
         .Columns(3).Alignment = dbgRight
         .Columns(4).Alignment = dbgRight
         .Columns(5).Alignment = dbgRight
         .Columns(6).Alignment = dbgRight
         .Columns(7).Alignment = dbgRight
         .Columns(8).Alignment = dbgRight
         .Columns(9).Alignment = dbgRight
         .Columns(10).Alignment = dbgRight
         .Columns(11).Alignment = dbgRight
         .Columns(12).Alignment = dbgRight
         .Columns(13).Alignment = dbgRight
         .Columns(14).Alignment = dbgRight
         .Columns(15).Alignment = dbgRight
    End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If gReg.State = 1 Then gReg.Close
    Set gReg = Nothing
End Sub



Private Sub MfgLiquidacion_HeadClick(ByVal ColIndex As Integer)
Dim lsql As String


            
    Select Case ColIndex
           Case 0:
               If iOrden(0) Then
                  lOrden = " Sist DESC "
               Else
                  lOrden = " Sist ASC "
               End If
            iOrden(0) = Not iOrden(0)
            
            Case 1:
               If iOrden(1) Then
                  lOrden = " Nombre DESC "
               Else
                  lOrden = " Nombre ASC "
               End If
             iOrden(1) = Not iOrden(1)
            Case 2
               If iOrden(2) Then
                  lOrden = " Código DESC "
               Else
                  lOrden = " Código ASC "
               End If
             iOrden(2) = Not iOrden(2)
             
            Case 3
               If iOrden(3) Then
                  lOrden = " Total DESC "
               Else
                  lOrden = " Total ASC "
               End If
             iOrden(3) = Not iOrden(3)
             
             Case 4
               If iOrden(4) Then
                  lOrden = " Acueducto DESC "
               Else
                  lOrden = " Acueducto ASC "
               End If
             iOrden(4) = Not iOrden(4)
             
              Case 5
               If iOrden(5) Then
                  lOrden = " Alcantarillado DESC "
               Else
                  lOrden = " Alcantarillado ASC "
               End If
             iOrden(5) = Not iOrden(5)
             
              Case 6
               If iOrden(6) Then
                  lOrden = " Aseo DESC "
               Else
                  lOrden = " Aseo ASC "
               End If
             iOrden(6) = Not iOrden(6)
             
              Case 7
               If iOrden(7) Then
                  lOrden = " Consumo DESC "
               Else
                  lOrden = " Consumo ASC "
               End If
              iOrden(7) = Not iOrden(7)
             ' Crédito,debito AS Débito,deuda AS Deuda,refacturado AS Refactu,Ajuste,iif(pagada=true,'Si','No') As Paga ,idFactura,idSuscriptor" _

              Case 8
               If iOrden(8) Then
                  lOrden = " Contribu DESC "
               Else
                  lOrden = " Contribu ASC "
               End If
              iOrden(8) = Not iOrden(8)
              
             Case 9
               If iOrden(9) Then
                  lOrden = " Subsi DESC "
               Else
                  lOrden = " subsi ASC "
               End If
              iOrden(9) = Not iOrden(9)
              
              Case 10
               If iOrden(10) Then
                  lOrden = " Otro DESC "
               Else
                  lOrden = " Otro ASC "
               End If
              iOrden(10) = Not iOrden(10)
              
             Case 11
             
              If iOrden(11) Then
                  lOrden = " Crédito DESC "
               Else
                  lOrden = " Crédito ASC "
               End If
              iOrden(11) = Not iOrden(11)
             
             Case 12
              If iOrden(12) Then
                  lOrden = " Débito DESC "
               Else
                  lOrden = " Débito ASC "
               End If
              iOrden(12) = Not iOrden(12)
             
             Case 13
              If iOrden(13) Then
                  lOrden = " Deuda DESC "
               Else
                  lOrden = " Deuda ASC "
               End If
              iOrden(13) = Not iOrden(13)
             
             
             Case 14
              If iOrden(14) Then
                  lOrden = " Refactu DESC "
               Else
                  lOrden = " Refactu ASC "
               End If
              iOrden(14) = Not iOrden(14)
              
             Case 15
              If iOrden(15) Then
                  lOrden = " Ajuste DESC "
               Else
                  lOrden = " Ajuste ASC "
               End If
              iOrden(15) = Not iOrden(15)
              
              
              
               Case 16
              If iOrden(16) Then
                  lOrden = " Paga DESC "
               Else
                  lOrden = " Paga ASC "
               End If
              iOrden(16) = Not iOrden(16)
      End Select
      
      
      SQL = "SELECT suscriptor.Sistema AS Sist,suscriptor.codigo AS Código, facturacion.total AS Total,facturacionMes.Acueducto AS Acuedu, " _
      & " facturacionMes.Alcantarillado AS Alcanta,facturacionMes.Aseo,facturacionMes.Consumo, " _
      & " facturacionMes.Deuda,facturacionMes.OtroValor,facturacionMes.Subsidio, " _
      & " facturacionMes.Ajuste,facturacionMes.Refacturado As Refactu,facturacionMes.deuda_refa,facturacion.id,suscriptor.id FROM suscriptor,facturacion,facturacionMes " _
      & " WHERE suscriptor.id=facturacionMes.id_suscriptor AND facturacion.id=facturacionMes.id_factura " _
      & " AND suscriptor.bloqueo=false AND facturacion.id_fecha=" & gFecha & strCodigo
      
      'lsql = GenereSQL & " ORDER BY " & lOrden
      gReg.Sort = lOrden
      
            
End Sub

Private Sub MfgLiquidacion_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
Dim Row As Integer
Dim Col As Integer
Dim i As Integer
On Error Resume Next
 Col = MfgLiquidacion.ColContaining(x)
 Row = MfgLiquidacion.RowContaining(y)
   
   With MfgLiquidacion
       If Row = -1 And Col = -1 Then
          For i = 0 To gReg.RecordCount - 1
           '.SelBookmarks.Add
           .SelBookmarks.Add .GetBookmark(i)
          Next
       End If
   End With
'Dim i As Integer
'    Row = MfgLiquidacion.MouseRow
'    Col = MfgLiquidacion.MouseCol
'
'    If Col = 0 And Shift = 2 And Row <> 0 Then
'          With MfgLiquidacion
'                  If .RowData(Row) = 0 Then
'                     .RowData(Row) = .RowData(Row) + 1
'                  Else
'                     .RowData(Row) = .RowData(Row) - 1
'                  End If
'            SeleccionarFila Row
'          End With
'    End If
'
'    If Col = 0 And Row = 0 Then
'       iClic = iClic + 1
'       iClic = IIf(iClic = 2, 0, 1)
'       For i = 1 To MfgLiquidacion.Rows - 1
'           MfgLiquidacion.RowData(i) = IIf(iClic = 1, 1, 0)
'           SeleccionarFila i
'       Next
'    End If
End Sub

Private Sub Liquidacion()
Dim Reg As ADODB.Recordset
Dim R1 As ADODB.Recordset
Dim iFinal As Long
Dim iRow As Integer
Dim iUso As Integer
Dim ValorFijoAcueducto As Double: Dim ValorFijoAlcantarillado As Double
Dim ValorBarridoAseo As Double: Dim ValorRecoleccionAseo As Double: Dim ValorBasicoAcueducto As Double
Dim ValorDisposicionAseo As Double: Dim ValorRecaudoAseo As Double
Dim ValorBasicoAlcantarillado As Double: Dim ValorComplementarioAcueducto As Double
Dim ValorComplementarioAlcantarillado As Double: Dim ValorSuntuarioAcueducto As Double
Dim ValorSuntuarioAlcantarillado As Double
Dim SubsidioFijoAcueducto As Double: Dim SubsidioFijoAlcantarillado As Double
Dim SubsidioFijoAseo As Double
Dim SubsidioBasicoAcueducto As Double: Dim SubsidioBasicoAlcantarillado As Double
Dim OtroValor As Double: Dim OtroSubsidio As Double
Dim ValorDebito As Double: Dim ValorDebitoRef As Double: Dim ValorCredito As Double: Dim ValorReconexion As Double
Dim RangoUno As Long: Dim ValorR1 As Double
Dim RangoDos As Long: Dim ValorR2 As Double
Dim RangoTres As Long: Dim ValorR3 As Double
Dim ValorDeuda As Double: Dim ValorFijoAcueductoRef As Double
Dim ValorBasicoAcueductoRef As Double: Dim ValorComplementarioAcueductoRef As Double
Dim ValorSuntuarioAcueductoRef As Double
Dim ValorFijoAlcantarilladoRef As Double: Dim ValorBasicoAlcantarilladoRef As Double
Dim ValorComplementarioAlcantarilladoRef As Double: Dim ValorSuntuarioAlcantarilladoRef As Double
Dim ValorBarridoAseoRef As Double: Dim ValorRecoleccionAseoRef As Double: Dim ValorDisposicionAseoRef As Double
Dim OtroValorRef As Double: Dim ValorRecaudoAseoRef As Double
Dim InteresMoraAcueducto As Double: Dim InteresMoraAlcantarillado As Double
Dim InteresMoraAseo As Double: Dim InteresMoraDebito As Double
Dim ContribucionAcueductoRef As Double: Dim ContribucionAlcantarilladoRef As Double: Dim ContribucionAseoRef As Double
Dim ValorConsumo As Double
Dim OtroInteres As Double
Dim valorCuota As Double: Dim ValorDeudaRefacturado As Double
Dim ValorRefacturado As Double
Dim ValorAseoRefacturado As Double: Dim ValorAlcantarilladoRefacturado As Double
Dim ValorAcueductoRefacturado As Double: Dim ValorConsumoRefacturado As Double
Dim OtroValorRefacturado As Double
Dim fTotal As Double: Dim ValorAbono As Double
Dim fSubsidio As Double: Dim idFactura As Long
Dim iPosRow As Long
Dim RowOld As Long
Dim sTotal As Double
Dim sSubsidio As Double
Dim InteresDeuda As Double
Dim ValorConsumo2 As Double
Dim R2 As ADODB.Recordset
Dim Ajuste As Double
Dim AjusteRef As Double
Dim InteresMoraAjuste As Double
Dim SubsidioAseo As Double
Dim ValorContribucionAcueducto As Double
Dim ValorContribucionAlcantarillado As Double
Dim valorContribucionAseo As Double
    iFinal = 0
  
  
  
    
  Screen.MousePointer = vbHourglass
        With MfgLiquidacion
             If .SelBookmarks.count > 0 Then
                For iRow = 0 To .SelBookmarks.count - 1
                    gReg.Bookmark = .SelBookmarks(iRow)
                    iFinal = iFinal + 1
                    ReDim Preserve bSeleccionados(iFinal)
                    ReDim Preserve iFacturas(iFinal)
                    bSeleccionados(iFinal) = gReg(18)
                
                Next
                iPosRow = .Row
                RowOld = .FirstRow - 1
             Else
                SQL = "SELECT id FROM suscriptor WHERE bloqueo=false " & strCodigo
                Set R1 = New ADODB.Recordset
                ExecuteSql R1, SQL
                If gError = 0 Then
                   While Not R1.EOF
                        iFinal = iFinal + 1
                        ReDim Preserve bSeleccionados(iFinal)
                        ReDim Preserve iFacturas(iFinal)
                        bSeleccionados(iFinal) = R1("id")

                        R1.MoveNext
                   Wend
                   R1.Close
                   
                End If
                Set R1 = Nothing

             End If
        End With
        
    
    
    For iRow = 1 To iFinal
        ValorRefacturado = 0
        Set Reg = New ADODB.Recordset
        SQL = "SELECT * FROM suscriptor,uso " _
        & " WHERE suscriptor.id_uso=uso.id " _
        & " AND suscriptor.id=" & bSeleccionados(iRow)
        ExecuteSql Reg, SQL
        If gError = 0 Then
           If Not Reg.BOF Then
          
              RangoUno = IsNumberNull(Reg("RangoUno"))
              RangoDos = IsNumberNull(Reg("RangoDos"))
              RangoTres = IsNumberNull(Reg("RangoTres"))
              
              ValorFijoAcueducto = 0
              ValorBasicoAcueducto = 0
              ValorComplementarioAcueducto = 0
              ValorSuntuarioAcueducto = 0
              SubsidioFijoAcueducto = 0
              SubsidioBasicoAcueducto = 0
              ValorContribucionAcueducto = 0
              
              
              ValorFijoAlcantarillado = 0
              ValorBasicoAlcantarillado = 0
              ValorComplementarioAlcantarillado = 0
              ValorSuntuarioAlcantarillado = 0
              SubsidioFijoAlcantarillado = 0
              SubsidioBasicoAlcantarillado = 0
              ValorContribucionAlcantarillado = 0
              
              ValorBarridoAseo = 0
              ValorRecoleccionAseo = 0
              ValorDisposicionAseo = 0
              ValorRecaudoAseo = 0
              SubsidioAseo = 0
              valorContribucionAseo = 0
              
              OtroValor = 0
              OtroSubsidio = 0
              
              ConsumoBasico = 0
              ConsumoComplementario = 0
              ConsumoSuntuario = 0
              
              'CalcularConsumo Reg("ConsumoActual"), RangoUno, RangoDos, RangoTres, 100, 200, 300
              Select Case Reg("ConsumoActual")
                        
                     Case Is <= RangoUno
                        ConsumoBasico = IsNumberNull(Reg("ConsumoActual"))
                        
                        ValorBasicoAcueducto = Round(IsNumberNull(Reg("ValorBasicoAcueducto")) * IsNumberNull(Reg("ConsumoActual")))
                        ValorBasicoAlcantarillado = Round(IsNumberNull(Reg("ValorBasicoAlcantarillado")) * IsNumberNull(Reg("ConsumoActual")))
                     Case RangoUno + 1 To RangoDos
                        ConsumoBasico = RangoUno
                        ConsumoComplementario = IsNumberNull(Reg("ConsumoActual")) - RangoUno
                        
                        ValorBasicoAcueducto = Round(IsNumberNull(Reg("ValorBasicoAcueducto")) * RangoUno)
                        ValorBasicoAlcantarillado = Round(IsNumberNull(Reg("ValorBasicoAlcantarillado")) * RangoUno)
                        
                        ValorComplementarioAcueducto = Round(IsNumberNull(Reg("ValorComplementarioAcueducto")) * ConsumoComplementario)
                        ValorComplementarioAlcantarillado = Round(IsNumberNull(Reg("ValorComplementarioAlcantarillado")) * ConsumoComplementario)
                                  
                     Case Is >= RangoTres
                        ConsumoBasico = RangoUno
                        ConsumoComplementario = RangoDos - RangoUno
                        ConsumoSuntuario = IsNumberNull(Reg("ConsumoActual")) - RangoTres
                        
                        ValorBasicoAcueducto = Round(IsNumberNull(Reg("ValorBasicoAcueducto")) * RangoUno)
                        ValorBasicoAlcantarillado = Round(IsNumberNull(Reg("ValorBasicoAlcantarillado")) * RangoUno)
                        
                        ValorComplementarioAcueducto = Round(IsNumberNull(Reg("ValorComplementarioAcueducto")) * ConsumoComplementario)
                        ValorComplementarioAlcantarillado = Round(IsNumberNull(Reg("ValorComplementarioAlcantarillado")) * ConsumoComplementario)
                        
                        ValorSuntuarioAcueducto = Round(IsNumberNull(Reg("ValorSuntuarioAcueducto")) * ConsumoSuntuario)
                        ValorSuntuarioAlcantarillado = Round(IsNumberNull(Reg("ValorSuntuarioAlcantarillado")) * ConsumoSuntuario)
                        
              End Select
                        
                        
              ValorFijoAcueducto = Round(IsNumberNull(Reg("ValorFijoAcueducto")))
              SubsidioFijoAcueducto = Round(ValorFijoAcueducto * (IsNumberNull(Reg("SubsidioFijoAcueducto")) / 100))
              SubsidioBasicoAcueducto = Round(ValorBasicoAcueducto * (IsNumberNull(Reg("SubsidioBasicoAcueducto")) / 100))
              ValorContribucionAcueducto = Round((ValorFijoAcueducto + ValorBasicoAcueducto + ValorComplementarioAcueducto + ValorSuntuarioAcueducto) * (IsNumberNull(Reg("PorcentajeContribucionAcueducto")) / 100))
              
              
              ValorFijoAlcantarillado = Round(IsNumberNull(Reg("ValorFijoAlcantarillado")))
              SubsidioFijoAlcantarillado = Round(ValorFijoAlcantarillado * (IsNumberNull(Reg("SubsidioFijoAlcantarillado")) / 100))
              SubsidioBasicoAlcantarillado = Round(ValorBasicoAlcantarillado * (IsNumberNull(Reg("SubsidioBasicoAlcantarillado")) / 100))
              ValorContribucionAlcantarillado = Round((ValorFijoAlcantarillado + ValorBasicoAlcantarillado + ValorComplementarioAlcantarillado + ValorSuntuarioAlcantarillado) * (IsNumberNull(Reg("PorcentajeContribucionAlcantarillado")) / 100))
              
              
              If Reg("Alcantarillado") = False Then
                 ValorFijoAlcantarillado = 0
                 ValorBasicoAlcantarillado = 0
                 ValorComplementarioAlcantarillado = 0
                 ValorSuntuarioAlcantarillado = 0
                 SubsidioFijoAlcantarillado = 0
                 SubsidioBasicoAlcantarillado = 0
                 ValorContribucionAlcantarillado = 0
              End If
              
                
              
              If Reg("Aseo") = True Then
                 ValorBarridoAseo = Round(IsNumberNull(Reg("ValorBarridoAseo")))
                 ValorRecoleccionAseo = Round(IsNumberNull(Reg("ValorRecoleccionAseo")))
                 ValorDisposicionAseo = Round(IsNumberNull(Reg("ValorDisposicionAseo")))
                 ValorRecaudoAseo = Round(IsNumberNull(Reg("ValorRecaudoAseo")))
                 SubsidioAseo = Round((ValorBarridoAseo + ValorRecoleccionAseo + ValorDisposicionAseo + ValorRecaudoAseo) * (IsNumberNull(Reg("SubsidioAseo")) / 100))
                 valorContribucionAseo = Round((ValorBarridoAseo + ValorRecoleccionAseo + ValorDisposicionAseo + ValorRecaudoAseo) * (IsNumberNull(Reg("PorcentajeContribucionAseo")) / 100))
              End If
              
              OtroValor = Round(IsNumberNull(Reg("OtroValor")))
              OtroSubsidio = Round(OtroValor * (IsNumberNull(Reg("OtroSubsidio")) / 100))
              
              
               
                 
              
              
             
              
              '********************************** NOTA DÉBITO *************
              ValorDebito = 0
              Set R1 = New ADODB.Recordset
              
              SQL = "SELECT * FROM debito WHERE id_suscriptor=" & bSeleccionados(iRow) & " " _
              & " AND id_fecha=" & gFecha
              
              ExecuteSql R1, SQL
              If gError = 0 Then
                 If Not R1.BOF Then
                    ValorDebito = Round(IsNumberNull(R1("Valor")))
                 End If
                 R1.Close
                 Set R1 = Nothing
              End If
              
                '********************************** NOTA CRÉDITO *************
               ValorCredito = 0
              Set R1 = New ADODB.Recordset
              
              SQL = "SELECT * FROM credito WHERE id_suscriptor=" & bSeleccionados(iRow) & " " _
              & " AND id_fecha=" & gFecha
             
              ExecuteSql R1, SQL
              If gError = 0 Then
                 If Not R1.BOF Then
                    ValorCredito = Round(IsNumberNull(R1("Valor")))
                 End If
                 R1.Close
                 Set R1 = Nothing
              End If
              
              Set R1 = New ADODB.Recordset
              

            
              
              
              
              
              Set R1 = New ADODB.Recordset
              ValorRefacturado = 0
              
              'DEUDAS EN REFACTURADO
                
              SQL = "DELETE FROM temp_refacturado_deuda WHERE " _
              & " id_fecha IN (SELECT id_fecha FROM AntFecha)"
              BaseExecute SQL
              
              SQL = "INSERT INTO temp_refacturado_deuda " _
              & " SELECT * FROM refacturado_deuda WHERE id_fecha " _
              & " IN (SELECT id_fecha FROM AntFecha)"
              BaseExecute SQL
              
                           
              SQL = "SELECT * FROM temp_refacturado_deuda " _
              & " WHERE id_suscriptor=" & bSeleccionados(iRow) & " " _
              & " AND id_fecha IN (SELECT id_fecha FROM AntFecha) " _
              & " ORDER BY id_deuda ASC"
              
              ExecuteSql R1, SQL
              If gError = 0 Then
                 While Not R1.EOF
                   ValorDeudaRefacturado = IsNumberNull(R1("Valor"))
                   InteresDeuda = IsNumberNull(R1("interes"))
                   
                       RestarValor InteresDeuda, ValorCredito
                       RestarValor ValorDeudaRefacturado, ValorCredito
                          
                          If ValorDeudaRefacturado = 0 And InteresDeuda = 0 Then
                             SQL = "DELETE FROM temp_refacturado_deuda WHERE " _
                             & " id_suscriptor=" & bSeleccionados(iRow) & " " _
                             & " AND id_deuda=" & R1("id_deuda") & " AND id_fecha IN (SELECT id_fecha FROM AntFecha)"
                             BaseExecute SQL
                             
                                                         
                          Else
                            
                             SQL = "UPDATE temp_refacturado_deuda set valor=" & ValorDeudaRefacturado & ",interes=" & InteresDeuda & " " _
                             & " WHERE id_suscriptor=" & bSeleccionados(iRow) & " " _
                             & " AND id_deuda=" & R1("id_deuda") & " AND id_fecha IN (SELECT id_fecha FROM AntFecha)"
                             BaseExecute SQL
                          
                               
                          End If
                          
                          
                          
             
                   ValorRefacturado = ValorRefacturado + ValorDeudaRefacturado + InteresDeuda
                   R1.MoveNext
                 Wend
                 R1.Close
                 Set R1 = Nothing
              End If
              
              
              
               
             
              
              'REFACTURADO
              
              SQL = "DELETE FROM temp_refacturado WHERE " _
              & " id_fecha IN (SELECT id_fecha FROM AntFecha)"
              BaseExecute SQL
              
              SQL = "INSERT INTO temp_refacturado " _
              & " SELECT * FROM refacturado " _
              & " WHERE id_fecha IN (SELECT id_fecha FROM AntFecha)"
              BaseExecute SQL
              
              Set R1 = New ADODB.Recordset
              SQL = "SELECT * FROM temp_refacturado WHERE " _
              & " id_suscriptor=" & bSeleccionados(iRow) & " " _
              & " AND id_fecha IN (SELECT id_fecha FROM AntFecha) "
              ExecuteSql R1, SQL
              If gError = 0 Then
                 If Not R1.BOF Then
                    ValorFijoAcueductoRef = IsNumberNull(R1("ValorFijoAcueducto"))
                    RestarValor ValorFijoAcueductoRef, ValorCredito
                    
                    ValorBasicoAcueductoRef = IsNumberNull(R1("ValorBasicoAcueducto"))
                    RestarValor ValorBasicoAcueductoRef, ValorCredito
                     
                    
                    ValorComplementarioAcueductoRef = IsNumberNull(R1("ValorComplementarioAcueducto"))
                    RestarValor ValorComplementarioAcueductoRef, ValorCredito
                    
                    ValorSuntuarioAcueductoRef = IsNumberNull(R1("ValorSuntuarioAcueducto"))
                    RestarValor ValorSuntuarioAcueductoRef, ValorCredito
                    
                    ValorFijoAlcantarilladoRef = IsNumberNull(R1("ValorFijoAlcantarillado"))
                    RestarValor ValorFijoAlcantarilladoRef, ValorCredito

                    
                    ValorBasicoAlcantarilladoRef = IsNumberNull(R1("ValorBasicoAlcantarillado"))
                    RestarValor ValorBasicoAlcantarilladoRef, ValorCredito
                   
                    
                    ValorComplementarioAlcantarilladoRef = IsNumberNull(R1("valorComplementarioAlcantarillado"))
                    RestarValor ValorComplementarioAlcantarilladoRef, ValorCredito
                    
                    ValorSuntuarioAlcantarilladoRef = IsNumberNull(R1("valorSuntuarioAlcantarillado"))
                    RestarValor ValorSuntuarioAlcantarilladoRef, ValorCredito
                    
                    ValorBarridoAseoRef = IsNumberNull(R1("ValorBarridoAseo"))
                    RestarValor ValorBarridoAseoRef, ValorCredito
                                        
                    ValorRecoleccionAseoRef = IsNumberNull(R1("ValorRecoleccionAseo"))
                    RestarValor ValorRecoleccionAseoRef, ValorCredito
                    
                    ValorDisposicionAseoRef = IsNumberNull(R1("ValorDisposicionAseo"))
                    RestarValor ValorDisposicionAseoRef, ValorCredito
                    
                    ValorRecaudoAseoRef = IsNumberNull(R1("ValorRecaudoAseo"))
                   RestarValor ValorRecaudoAseoRef, ValorCredito
                    
                    
                    OtroValorRef = IsNumberNull(R1("OtroValor"))
                    RestarValor OtroValorRef, ValorCredito
                    
                    InteresMoraAcueducto = IsNumberNull(R1("InteresMoraAcueducto"))
                     RestarValor InteresMoraAcueducto, ValorCredito
                    
                    InteresMoraAlcantarillado = IsNumberNull(R1("InteresMoraAlcantarillado"))
                    RestarValor InteresMoraAlcantarillado, ValorCredito
                    
                    
                    
                    InteresMoraAseo = IsNumberNull(R1("InteresMoraAseo"))
                    RestarValor InteresMoraAseo, ValorCredito
                    
                    InteresMoraDebito = IsNumberNull(R1("InteresMoraDebito"))
                    RestarValor InteresMoraDebito, ValorCredito
                    
                    
                    ValorDebitoRef = IsNumberNull(R1("ValorDebito"))
                    RestarValor ValorDebitoRef, ValorCredito
                    
                    ContribucionAcueductoRef = IsNumberNull(R1("ContribucionAcueducto"))
                    RestarValor ContribucionAcueductoRef, ValorCredito
                    
                     ContribucionAlcantarilladoRef = IsNumberNull(R1("ContribucionAlcantarillado"))
                    RestarValor ContribucionAlcantarilladoRef, ValorCredito
                    
                     ContribucionAseoRef = IsNumberNull(R1("ContribucionAseo"))
                    RestarValor ContribucionAseoRef, ValorCredito
                    
                    
                    OtroInteres = IsNumberNull(R1("OtroInteres"))
                     RestarValor OtroInteres, ValorCredito
                    
'                    InteresMoraAjuste = IsNumberNull(R1("InteresMoraAjuste"))
'                    RestarValor InteresMoraAjuste, ValorCredito
                     
'                    AjusteRef = IsNumberNull(R1("Ajuste"))
'                    RestarValor AjusteRef, ValorCredito
                    
                    SQL = "UPDATE temp_refacturado set ValorFijoAcueducto=" & ValorFijoAcueductoRef & ", " _
                    & " ValorFijoAlcantarillado=" & ValorFijoAlcantarilladoRef & "," _
                    & " InteresMoraAcueducto= " & InteresMoraAcueducto & ", " _
                    & " InteresMoraAlcantarillado=" & InteresMoraAlcantarillado & "," _
                    & " InteresMoraAseo=" & InteresMoraAseo & ",OtroInteres=" & OtroInteres & ", " _
                    & " ValorBarridoAseo=" & ValorBarridoAseoRef & ", OtroValor=" & OtroValorRef & ", " _
                    & " ValorRecoleccionAseo=" & ValorRecoleccionAseoRef & ",ValorDisposicionAseo=" & ValorDisposicionAseoRef & "," _
                    & " ValorRecaudoAseo=" & ValorRecaudoAseoRef & ", " _
                    & " ValorBasicoAcueducto=" & ValorBasicoAcueductoRef & "," _
                    & " ValorComplementarioAcueducto=" & ValorComplementarioAcueductoRef & ", " _
                    & " ValorSuntuarioAcueducto=" & ValorSuntuarioAcueductoRef & ", ValorBasicoAlcantarillado=" & ValorBasicoAlcantarilladoRef & ", " _
                    & " ValorComplementarioAlcantarillado=" & ValorComplementarioAlcantarilladoRef & ", " _
                    & " ValorSuntuarioAlcantarillado=" & ValorSuntuarioAlcantarilladoRef & ", " _
                    & " InteresMoraDebito=" & InteresMoraDebito & ", " _
                    & " ValorDebito=" & ValorDebitoRef & ",ContribucionAcueducto=" & ContribucionAcueductoRef & ",Contribucionalcantarillado=" & ContribucionAlcantarilladoRef & ",  " _
                    & " ContribucionAseo=" & ContribucionAseoRef & " " _
                    & " WHERE id_suscriptor=" & bSeleccionados(iRow) & " AND id_fecha IN (SELECT id_fecha FROM AntFecha)"
                    BaseExecute SQL
                    
                 ValorRefacturado = ValorRefacturado + ValorFijoAcueductoRef + ValorFijoAlcantarilladoRef + InteresMoraAcueducto + _
                 InteresMoraAlcantarillado + InteresMoraAseo + ValorBarridoAseoRef + ValorRecoleccionAseoRef + OtroValorRef + _
                 ValorDisposicionAseoRef + ValorRecaudoAseoRef + _
                 ValorBasicoAcueductoRef + ValorComplementarioAcueductoRef + ValorSuntuarioAcueductoRef + _
                 ValorBasicoAlcantarilladoRef + ValorComplementarioAlcantarilladoRef + _
                 ValorSuntuarioAlcantarilladoRef + OtroInteres + InteresMoraDebito + ValorDebitoRef + ContribucionAcueductoRef + _
                 ContribucionAlcantarilladoRef + ContribucionAseoRef + AjusteRef + InteresMoraAjuste
                 
                    
                 End If
                 R1.Close
              End If
              
           Set R1 = Nothing
           
           Dim ValorDeudaRef As Double
           Dim InteresDeudaRef As Double
           
                    
              
              
           
             Dim ValorDeudaParcial As Double
             ValorDeudaParcial = 0
             ValorDeuda = 0
              '*************** DEUDAS ************************
              SQL = "DELETE FROM temp_deuda_suscriptor " _
              & " WHERE id_suscriptor=" & bSeleccionados(iRow)
              BaseExecute SQL
              
              SQL = "INSERT INTO temp_deuda_suscriptor " _
              & " SELECT * FROM control_deuda where id_suscriptor=" & bSeleccionados(iRow)
              BaseExecute SQL
              
              SQL = "SELECT valor_cuota ,id FROM temp_deuda_suscriptor " _
              & " WHERE id_suscriptor=" & bSeleccionados(iRow)
              Set R1 = New ADODB.Recordset
              ExecuteSql R1, SQL
              ValorDeuda = 0
              If gError = 0 Then
                 While Not R1.EOF
                    ValorDeudaParcial = IsNumberNull(R1("valor_cuota"))
                    RestarValor ValorDeudaParcial, ValorCredito
                    
                    SQL = "UPDATE temp_deuda_suscriptor set valor_cuota=" & ValorDeudaParcial & " " _
                    & " WHERE id=" & R1("id")
                    BaseExecute SQL
                    
                    ValorDeuda = ValorDeudaParcial + ValorDeuda
                    R1.MoveNext
                 Wend
                 R1.Close
              End If
              Set R1 = Nothing
              
              
              
              
              
              
              Dim SubsidioBarrido As Double
              Dim SubsidioRecoleccion As Double
              Dim SubsidioDisposicion As Double
              Dim SubsidioRecaudo As Double

              SubsidioBarrido = Round(ValorBarridoAseo * (IsNumberNull(Reg("SubsidioAseo")) / 100))
              SubsidioRecoleccion = Round(ValorRecoleccionAseo * (IsNumberNull(Reg("SubsidioAseo")) / 100))
              SubsidioDisposicion = Round(ValorDisposicionAseo * (IsNumberNull(Reg("SubsidioAseo")) / 100))
              SubsidioRecaudo = Round(ValorRecaudoAseo * (IsNumberNull(Reg("SubsidioAseo")) / 100))
              
              
              Dim ValorFijoAcueducto2 As Double
              Dim ValorBasicoAcueducto2 As Double
              Dim ValorComplementarioAcueducto2 As Double
              Dim ValorSuntuarioAcueducto2 As Double
              Dim ValorContribucionAcueducto2 As Double
              Dim ValorFijoAlcantarillado2 As Double
              Dim ValorBasicoAlcantarillado2 As Double
              Dim ValorComplementarioAlcantarillado2 As Double
              Dim ValorSuntuarioAlcantarillado2 As Double
              Dim ValorContribucionAlcantarillado2 As Double
              Dim ValorBarridoAseo2 As Double
              Dim ValorRecoleccionAseo2 As Double
              Dim ValorDisposicionAseo2 As Double
              Dim ValorRecaudoAseo2 As Double
              Dim valorContribucionAseo2 As Double
              Dim OtroValor2 As Double
              Dim ValorDebito2 As Double
              Dim temp_SubsidioFijoAcueducto As Double
              Dim temp_SubsidioBasicoAcueducto As Double
              Dim temp_SubsidioFijoAlcantarillado As Double
              Dim temp_SubsidioBasicoAlcantarillado As Double
              Dim temp_SubsidioBarrido As Double
              Dim temp_SubsidioRecoleccion As Double
              Dim temp_SubsidioDisposicion As Double
              Dim temp_SubsidioRecaudo As Double
              
              Dim temp_OtroSubsidio As Double
              
              temp_SubsidioFijoAcueducto = SubsidioFijoAcueducto
              temp_SubsidioBasicoAcueducto = SubsidioBasicoAcueducto
              temp_SubsidioFijoAlcantarillado = SubsidioFijoAlcantarillado
              temp_SubsidioBasicoAlcantarillado = SubsidioBasicoAlcantarillado
              temp_SubsidioBarrido = SubsidioBarrido
              temp_SubsidioRecoleccion = SubsidioRecoleccion
              temp_SubsidioDisposicion = SubsidioDisposicion
              temp_SubsidioRecaudo = SubsidioRecaudo
              temp_OtroSubsidio = OtroSubsidio
              
              ValorFijoAcueducto2 = ValorFijoAcueducto - SubsidioFijoAcueducto
              
              RestarValor ValorFijoAcueducto2, ValorCredito
              
              If ValorFijoAcueducto2 = (ValorFijoAcueducto - SubsidioFijoAcueducto) Then
                 'ValorFijoAcueducto2 = ValorFijoAcueducto - SubsidioFijoAcueducto
                 ValorFijoAcueducto2 = ValorFijoAcueducto
              Else
                 temp_SubsidioFijoAcueducto = 0
              End If
              
              
              ValorBasicoAcueducto2 = ValorBasicoAcueducto - SubsidioBasicoAcueducto
              
              RestarValor ValorBasicoAcueducto2, ValorCredito
              
              If ValorBasicoAcueducto2 = (ValorBasicoAcueducto - SubsidioBasicoAcueducto) Then
                'ValorBasicoAcueducto2 = ValorBasicoAcueducto - SubsidioBasicoAcueducto
                 ValorBasicoAcueducto2 = ValorBasicoAcueducto
              Else
                 temp_SubsidioBasicoAcueducto = 0
              End If
              
              ValorComplementarioAcueducto2 = ValorComplementarioAcueducto
              RestarValor ValorComplementarioAcueducto2, ValorCredito
              ValorSuntuarioAcueducto2 = ValorSuntuarioAcueducto
              RestarValor ValorSuntuarioAcueducto2, ValorCredito
              ValorContribucionAcueducto2 = ValorContribucionAcueducto
              RestarValor ValorContribucionAcueducto2, ValorCredito
              
              
              
              ValorFijoAlcantarillado2 = ValorFijoAlcantarillado - SubsidioFijoAlcantarillado
              
              RestarValor ValorFijoAlcantarillado2, ValorCredito
              
              If ValorFijoAlcantarillado2 = (ValorFijoAlcantarillado - SubsidioFijoAlcantarillado) Then
                 'ValorFijoAlcantarillado2 = (ValorFijoAlcantarillado - SubsidioFijoAlcantarillado)
                 ValorFijoAlcantarillado2 = ValorFijoAlcantarillado
              Else
                 temp_SubsidioFijoAlcantarillado = 0
              End If
              
              
              
              
              ValorBasicoAlcantarillado2 = ValorBasicoAlcantarillado - SubsidioBasicoAlcantarillado
              
              RestarValor ValorBasicoAlcantarillado2, ValorCredito
              
              
              If ValorBasicoAlcantarillado2 = (ValorBasicoAlcantarillado - SubsidioBasicoAlcantarillado) Then
'                 ValorBasicoAlcantarillado2 = (ValorBasicoAlcantarillado - SubsidioBasicoAlcantarillado)
                ValorBasicoAlcantarillado2 = ValorBasicoAlcantarillado
              Else
                 temp_SubsidioBasicoAlcantarillado = 0
              End If
              
              ValorComplementarioAlcantarillado2 = ValorComplementarioAlcantarillado
              RestarValor ValorComplementarioAlcantarillado2, ValorCredito
              ValorSuntuarioAlcantarillado2 = ValorSuntuarioAlcantarillado
              RestarValor ValorSuntuarioAlcantarillado2, ValorCredito
              ValorContribucionAlcantarillado2 = ValorContribucionAlcantarillado
              RestarValor ValorContribucionAlcantarillado2, ValorCredito
              
              
              ValorBarridoAseo2 = ValorBarridoAseo - SubsidioBarrido
              
              RestarValor ValorBarridoAseo2, ValorCredito
              
              If ValorBarridoAseo2 = (ValorBarridoAseo - SubsidioBarrido) Then
                 
                ' ValorBarridoAseo2 = (ValorBarridoAseo - SubsidioBarrido)
                 ValorBarridoAseo2 = ValorBarridoAseo
              Else
                 temp_SubsidioBarrido = 0
              End If
              
              
              ValorRecoleccionAseo2 = ValorRecoleccionAseo - SubsidioRecoleccion
              
              RestarValor ValorRecoleccionAseo2, ValorCredito
              
              If ValorRecoleccionAseo2 = (ValorRecoleccionAseo - SubsidioRecoleccion) Then
                 
                 'ValorRecoleccionAseo2 = (ValorRecoleccionAseo - SubsidioRecoleccion)
                 ValorRecoleccionAseo2 = ValorRecoleccionAseo
              Else
                 temp_SubsidioRecoleccion = 0
              End If
              
              
              
              ValorDisposicionAseo2 = ValorDisposicionAseo - SubsidioDisposicion
              
              RestarValor ValorDisposicionAseo2, ValorCredito
              
              If ValorDisposicionAseo2 = (ValorDisposicionAseo - SubsidioDisposicion) Then
                 
                 'ValorDisposicionAseo2 = (ValorDisposicionAseo - SubsidioDisposicion)
                 ValorDisposicionAseo2 = ValorDisposicionAseo
              Else
                 temp_SubsidioDisposicion = 0
              End If
              
              
              ValorRecaudoAseo2 = ValorRecaudoAseo - SubsidioRecaudo
              
              RestarValor ValorRecaudoAseo2, ValorCredito
              
              If ValorRecaudoAseo2 = (ValorRecaudoAseo - SubsidioRecaudo) Then
                 
                 ValorRecaudoAseo2 = ValorRecaudoAseo
              Else
                 temp_SubsidioRecaudo = 0
              End If
              
              
              valorContribucionAseo2 = valorContribucionAseo
              RestarValor valorContribucionAseo, ValorCredito
              
              OtroValor2 = OtroValor - OtroSubsidio
              RestarValor OtroValor2, ValorCredito
              
              If OtroValor2 <> (OtroValor - OtroSubsidio) Then
                 
                 'OtroValor2 = (OtroValor - OtroSubsidio)
                 OtroValor2 = OtroValor
              Else
                 temp_OtroSubsidio = 0
              End If
              
              
              ValorDebito2 = ValorDebito
              RestarValor ValorDebito2, ValorCredito
              
                    
           End If
        End If
       
        If ValorCredito > 0 Then
           SQL = "UPDATE credito set acreditado=" & Round(ValorCredito) & " " _
           & " WHERE id_suscriptor=" & bSeleccionados(iRow) & " AND id_fecha=" & gFecha
           BaseExecute SQL
        End If
       
        fTotal = ValorFijoAcueducto2 + ValorBasicoAcueducto2 + ValorComplementarioAcueducto2 + _
        ValorSuntuarioAcueducto2 + ValorFijoAlcantarillado2 + ValorBasicoAlcantarillado2 + _
        ValorComplementarioAlcantarillado2 + ValorSuntuarioAlcantarillado2 + ValorBarridoAseo2 + _
        ValorRecoleccionAseo2 + ValorDisposicionAseo2 + ValorRecaudoAseo2 + OtroValor2 + ValorDebito2 + _
        ValorDeuda + ValorRefacturado + ValorContribucionAcueducto2 + _
        ValorContribucionAlcantarillado2 + valorContribucionAseo2
        
        
        
        fSubsidio = temp_SubsidioFijoAcueducto + temp_SubsidioBasicoAcueducto + temp_SubsidioFijoAlcantarillado + _
        temp_SubsidioBasicoAlcantarillado + temp_OtroSubsidio + temp_SubsidioDisposicion + temp_SubsidioBarrido + temp_SubsidioRecoleccion + _
        temp_SubsidioRecaudo
        
     
        fTotal = Round(fTotal - fSubsidio)
       
       
        Ajuste = fTotal Mod 10
        If Ajuste >= 5 Then
           fTotal = fTotal + (10 - Ajuste)
           Ajuste = 10 - Ajuste
           'ValorFijoAcueducto2 = ValorFijoAcueducto2 - temp_SubsidioFijoAcueducto + (10 - Ajuste)
           'temp_SubsidioFijoAcueducto = 0
        Else
           fTotal = fTotal - Ajuste
           'ValorFijoAcueducto2 = ValorFijoAcueducto2 - temp_SubsidioFijoAcueducto - Ajuste
           'temp_SubsidioFijoAcueducto = 0
           Ajuste = -Ajuste
        End If
        
        
        SQL = "SELECT facturacion.id FROM detalle_facturacion,facturacion WHERE " _
        & " detalle_facturacion.id_factura=facturacion.id AND " _
        & " detalle_facturacion.id_suscriptor=" & bSeleccionados(iRow) & " " _
        & " AND facturacion.id_fecha=" & gFecha
        Set R1 = New ADODB.Recordset
        ExecuteSql R1, SQL
        If gError = 0 Then
           If Not R1.BOF Then
              SQL = "UPDATE detalle_facturacion set ValorFijoAcueducto=" & ValorFijoAcueducto & ", " _
              & " ValorFijoAlcantarillado=" & ValorFijoAlcantarillado & ", ValorBarridoAseo =" & ValorBarridoAseo & "," _
              & " ValorRecoleccionAseo=" & ValorRecoleccionAseo & ",ValorDisposicionAseo=" & ValorDisposicionAseo & ", " _
              & " ValorRecaudoAseo=" & ValorRecaudoAseo & ",ContribucionAcueducto=" & ValorContribucionAcueducto & ", " _
              & " SubsidioFijoAcueducto =" & SubsidioFijoAcueducto & ",SubsidioFijoAlcantarillado=" & SubsidioFijoAlcantarillado & ", " _
              & " SubsidioBarridoAseo=" & SubsidioBarrido & ",SubsidioRecoleccionaseo=" & SubsidioRecoleccion & "," _
              & " SubsidioDisposicionAseo=" & SubsidioDisposicion & ",SubsidioRecaudoAseo=" & SubsidioRecaudo & ",SubsidioBasicoAcueducto=" & SubsidioBasicoAcueducto & ", " _
              & " SubsidioBasicoAlcantarillado=" & SubsidioBasicoAlcantarillado & ", ConsumoBasico=" & ConsumoBasico & ", " _
              & " ConsumoComplementario=" & ConsumoComplementario & " ,Consumosuntuario=" & ConsumoSuntuario & ", " _
              & " OtroValor=" & OtroValor & ",OtroSubsidio=" & OtroSubsidio & ", ValorBasicoAcueducto=" & ValorBasicoAcueducto & ", " _
              & " ValorBasicoAlcantarillado=" & ValorBasicoAlcantarillado & ", ValorComplementarioAcueducto=" & ValorComplementarioAcueducto & ",ContribucionAlcantarillado=" & ValorContribucionAlcantarillado & ",  " _
              & " ValorComplementarioAlcantarillado=" & ValorComplementarioAlcantarillado & ", ValorSuntuarioAcueducto=" & ValorSuntuarioAcueducto & ", " _
              & " ValorSuntuarioAlcantarillado =" & ValorSuntuarioAlcantarillado & ",ContribucionAseo=" & valorContribucionAseo & ",ValorDebito=" & ValorDebito & ",ajuste=" & Ajuste & " " _
              & " WHERE id_factura= " & R1("id")
              BaseExecute SQL
              
              
              SQL = "UPDATE temp_detalle_facturacion set ValorFijoAcueducto=" & ValorFijoAcueducto2 & ", " _
              & " ValorFijoAlcantarillado=" & ValorFijoAlcantarillado2 & ", ValorBarridoAseo =" & ValorBarridoAseo2 & "," _
              & " ValorRecoleccionAseo=" & ValorRecoleccionAseo2 & ",ValorDisposicionAseo=" & ValorDisposicionAseo2 & ", " _
              & " ValorRecaudoAseo=" & ValorRecaudoAseo2 & ",ContribucionAcueducto=" & ValorContribucionAcueducto2 & ", " _
              & " SubsidioFijoAcueducto =" & temp_SubsidioFijoAcueducto & ",SubsidioFijoAlcantarillado=" & temp_SubsidioFijoAlcantarillado & ", " _
              & " SubsidioBarridoAseo=" & temp_SubsidioBarrido & ",SubsidioRecoleccionaseo=" & temp_SubsidioRecoleccion & "," _
              & " SubsidioDisposicionAseo=" & temp_SubsidioDisposicion & ",SubsidioRecaudoAseo=" & temp_SubsidioRecaudo & ", SubsidioBasicoAcueducto=" & temp_SubsidioBasicoAcueducto & ", " _
              & " SubsidioBasicoAlcantarillado=" & temp_SubsidioBasicoAlcantarillado & ", ConsumoBasico=" & ConsumoBasico & ", " _
              & " ConsumoComplementario=" & ConsumoComplementario & " ,Consumosuntuario=" & ConsumoSuntuario & ", " _
              & " OtroValor=" & OtroValor2 & ",OtroSubsidio=" & temp_OtroSubsidio & ", ValorBasicoAcueducto=" & ValorBasicoAcueducto2 & ", " _
              & " ValorBasicoAlcantarillado=" & ValorBasicoAlcantarillado2 & ", ValorComplementarioAcueducto=" & ValorComplementarioAcueducto2 & ",ContribucionAlcantarillado=" & ValorContribucionAlcantarillado2 & ",  " _
              & " ValorComplementarioAlcantarillado=" & ValorComplementarioAlcantarillado2 & ", ValorSuntuarioAcueducto=" & ValorSuntuarioAcueducto2 & ", " _
              & " ValorSuntuarioAlcantarillado =" & ValorSuntuarioAlcantarillado2 & ",ContribucionAseo=" & valorContribucionAseo2 & ",ValorDebito=" & ValorDebito2 & ",ajuste=" & Ajuste & " " _
              & " WHERE id_factura= " & R1("id")
              BaseExecute SQL
              
              
              SQL = "UPDATE facturacion set Total=" & fTotal & ", saldo=" & fTotal & "  " _
              & " WHERE id=" & R1("id")
              BaseExecute SQL
           Else
               
              Set R1 = New ADODB.Recordset
              SQL = "SELECT Max(id) FROM facturacion"
              ExecuteSql R1, SQL
              If gError = 0 Then
                 If Not R1.BOF Then
                    idFactura = IIf(IsNull(R1(0)) = True, 0, R1(0)) + 1
                 End If
                 R1.Close
                
              End If
               Set R1 = Nothing
               
               
              SQL = "INSERT INTO facturacion (id,id_fecha,saldo,total) VALUES " _
              & " (" & idFactura & "," & gFecha & "," & fTotal & "," & fTotal & ")"
              BaseExecute SQL
               
              
               
              SQL = "INSERT INTO detalle_facturacion (ValorFijoAcueducto,ValorFijoAlcantarillado,ValorBarridoAseo,ValorRecoleccionAseo, " _
              & " ValorDisposicionAseo,ValorRecaudoAseo, SubsidioFijoAcueducto,contribucionAcueducto,contribucionAlcantarillado,contribucionAseo, " _
              & " SubsidioFijoAlcantarillado,SubsidioBarridoAseo,SubsidioRecoleccionAseo,SubsidioDisposicionAseo,SubsidioRecaudoAseo,SubsidioBasicoAcueducto,SubsidioBasicoAlcantarillado,ConsumoBasico, " _
              & " ConsumoComplementario,Consumosuntuario,OtroValor,OtroSubsidio,ValorBasicoAcueducto,ValorBasicoAlcantarillado, " _
              & " ValorComplementarioAcueducto,ValorComplementarioAlcantarillado,ValorSuntuarioAcueducto,ValorSuntuarioAlcantarillado,ValorDebito,ajuste,id_factura,id_suscriptor) " _
              & " VALUES (" & ValorFijoAcueducto & "," & ValorFijoAlcantarillado & "," & ValorBarridoAseo & "," & ValorRecoleccionAseo & ", " _
              & " " & ValorDisposicionAseo & "," & ValorRecaudoAseo & "," & SubsidioFijoAcueducto & "," & ValorContribucionAcueducto & "," & ValorContribucionAlcantarillado & "," & valorContribucionAseo & "," & SubsidioFijoAlcantarillado & ", " _
              & " " & SubsidioBarrido & "," & SubsidioRecoleccion & "," & SubsidioDisposicion & "," & SubsidioRecaudo & "," & SubsidioBasicoAcueducto & ", " _
              & " " & SubsidioBasicoAlcantarillado & "," & ConsumoBasico & ", " _
              & " " & ConsumoComplementario & " ," & ConsumoSuntuario & ", " _
              & " " & OtroValor & "," & OtroSubsidio & "," & ValorBasicoAcueducto & ", " _
              & " " & ValorBasicoAlcantarillado & "," & ValorComplementarioAcueducto & ", " _
              & " " & ValorComplementarioAlcantarillado & "," & ValorSuntuarioAcueducto & ", " _
              & " " & ValorSuntuarioAlcantarillado & "," & ValorDebito & "," & Ajuste & "," & idFactura & "," _
              & " " & bSeleccionados(iRow) & ")"
              BaseExecute SQL
                
              SQL = "INSERT INTO temp_detalle_facturacion (ValorFijoAcueducto,ValorFijoAlcantarillado,ValorBarridoAseo,ValorRecoleccionAseo, " _
              & " ValorDisposicionAseo,ValorRecaudoAseo, SubsidioFijoAcueducto,contribucionAcueducto,contribucionAlcantarillado,contribucionAseo, " _
              & " SubsidioFijoAlcantarillado,SubsidioBarridoAseo,SubsidioRecoleccionAseo,SubsidioDisposicionAseo,SubsidioRecaudoAseo,SubsidioBasicoAcueducto,SubsidioBasicoAlcantarillado,ConsumoBasico, " _
              & " ConsumoComplementario,Consumosuntuario,OtroValor,OtroSubsidio,ValorBasicoAcueducto,ValorBasicoAlcantarillado, " _
              & " ValorComplementarioAcueducto,ValorComplementarioAlcantarillado,ValorSuntuarioAcueducto,ValorSuntuarioAlcantarillado,ValorDebito,ajuste,id_factura,id_suscriptor) " _
              & " VALUES (" & ValorFijoAcueducto2 & "," & ValorFijoAlcantarillado2 & "," & ValorBarridoAseo & "," & ValorRecoleccionAseo & ", " _
              & " " & ValorDisposicionAseo & "," & ValorRecaudoAseo & "," & temp_SubsidioFijoAcueducto & "," & ValorContribucionAcueducto & "," & ValorContribucionAlcantarillado & "," & valorContribucionAseo & "," & temp_SubsidioFijoAlcantarillado & ", " _
              & " " & temp_SubsidioBarrido & "," & temp_SubsidioRecoleccion & "," & temp_SubsidioDisposicion & "," & temp_SubsidioRecaudo & ", " & temp_SubsidioBasicoAcueducto & ", " _
              & " " & temp_SubsidioBasicoAlcantarillado & "," & ConsumoBasico & ", " _
              & " " & ConsumoComplementario & " ," & ConsumoSuntuario & ", " _
              & " " & OtroValor & "," & temp_OtroSubsidio & "," & ValorBasicoAcueducto & ", " _
              & " " & ValorBasicoAlcantarillado & "," & ValorComplementarioAcueducto & ", " _
              & " " & ValorComplementarioAlcantarillado & "," & ValorSuntuarioAcueducto & ", " _
              & " " & ValorSuntuarioAlcantarillado & "," & ValorDebito & "," & Ajuste & "," & idFactura & "," _
              & " " & bSeleccionados(iRow) & ")"
                BaseExecute SQL
             
           End If
        End If
        
        Reg.Close
        Set Reg = Nothing
        ValorRefacturado = 0
        'ValorFijoAseo = 0
        ValorFijoAlcantarillado = 0
        ValorBasicoAlcantarillado = 0
        ValorComplementarioAlcantarillado = 0
        ValorSuntuarioAlcantarillado = 0
        SubsidioFijoAlcantarillado = 0
        SubsidioBasicoAlcantarillado = 0
        SubsidioAseo = 0
        ValorFijoAcueducto = 0
        ValorBasicoAcueducto = 0
        ValorSuntuarioAcueducto = 0
        ValorComplementarioAcueducto = 0
        SubsidioFijoAcueducto = 0
        SubsidioBasicoAcueducto = 0
     
      Next
      Filtro
      MfgLiquidacion.Scroll 0, RowOld
      Screen.MousePointer = vbDefault
      If iPosRow = 0 Then
         MsgBox "Realizada la Liquidación"
         Exit Sub
      End If
      MfgLiquidacion.SelBookmarks.Add MfgLiquidacion.RowBookmark(iPosRow)
      gReg.Bookmark = MfgLiquidacion.RowBookmark(iPosRow)
      MsgBox "Realizada la Liquidación"
End Sub


Private Sub Abonos(idFactura As Long)
Dim Reg As ADODB.Recordset
Dim R1 As ADODB.Recordset
Dim SQL As String
Dim lsql As String
Dim fAbono As Double
Dim ValorFijoAseo As Double: Dim ValorFijoAlcantarillado As Double
Dim ValorFijoAcueducto As Double
Dim ValorBasicoAcueducto As Double: Dim ValorComplementarioAcueducto As Double
Dim ValorSuntuarioAcueducto As Double: Dim ValorSuntuarioAlcantarillado As Double
Dim OtroValor As Double
Dim ValorBasicoAlcantarillado As Double: Dim ValorComplementarioAlcantarillado As Double
Dim InteresMoraAcueducto As Double: Dim InteresMoraAlcantarillado As Double
Dim InteresMoraAseo As Double: Dim OtroInteres As Double
Dim fAcueducto As Double: Dim fAlcantarillado As Double: Dim fAseo As Double
Dim fFijo As Double: Dim fConsumoBasico As Double: Dim fOtroValor As Double
Dim fAjuste As Double: Dim idSuscriptor As Long
Dim fInteresMora As Double: Dim fRefacturado As Double
Dim InteresMora As Double
Dim fInteres As Double
Dim i As Integer
Dim fInteresMoraAcueducto As Double: Dim fInteresMoraAlcantarillado As Double
Dim fInteresMoraAseo As Double: Dim fInteresMoraDebito As Double
Dim fOtroInteres As Double
Dim ValorFijoAcueductoRef  As Double: Dim ValorBasicoAcueductoRef As Double
Dim ValorSuntuarioAcueductoRef  As Double: Dim ValorComplementarioAcueductoRef   As Double
Dim ContribucionAcueductoRef As Double: Dim ValorFijoAlcantarilladoRef   As Double
Dim ValorBasicoAlcantarilladoRef  As Double: Dim ValorSuntuarioAlcantarilladoRef   As Double
Dim ValorComplementarioAlcantarilladoRef  As Double: Dim ContribucionAlcantarilladoRef   As Double
Dim ValorRecoleccionAseoRef  As Double: Dim ValorDisposicionAseoRef As Double: Dim ValorRecaudoAseoRef As Double
Dim ContribucionAseoRef  As Double: Dim ValorDebitoRef As Double: Dim InteresMoraDebito As Double
Dim OtroValorRef  As Double: Dim ValorContribucionAcueducto As Double
Dim ValorContribucionAlcantarillado As Double: Dim ValorBarridoAseo As Double: Dim ValorBarridoAseoRef As Double
Dim ValorDisposicionAseo As Double: Dim ValorRecoleccionAseo As Double: Dim valorContribucionAseo As Double
Dim ValorDebito As Double: Dim ContribucionAseo As Double: Dim ContribucionAcueducto As Double
Dim ContribucionAlcantarillado As Double
Dim ValorRecaudoAseo As Double
Dim R2 As ADODB.Recordset
Dim Ajuste As Double: Dim AjusteRef As Double: Dim InteresMoraAjuste As Double
Dim fInteresMoraAjuste As Double

    SQL = "SELECT valor FROM abono WHERE  " _
    & " id_fecha=" & gFecha & " " _
    & " AND id_factura=" & idFactura
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    fAbono = 0
    If gError = 0 Then
       While Not Reg.EOF
             fAbono = fAbono + Reg("valor")
             Reg.MoveNext
       Wend
       Reg.Close
       Set Reg = Nothing
    End If
    If fAbono <= 0 Then Exit Sub
    
      
    
    
    SQL = "SELECT detalle_facturacion.id_suscriptor,uso.InteresMora " _
    & " FROM detalle_facturacion,suscriptor,uso WHERE " _
    & " detalle_facturacion.id_suscriptor=suscriptor.id AND " _
    & " suscriptor.id_uso=uso.id AND " _
    & " detalle_facturacion.id_factura=" & idFactura
    Set Reg = New ADODB.Recordset
       ExecuteSql Reg, SQL
       If gError = 0 Then
          If Not Reg.BOF Then
             idSuscriptor = Reg("id_suscriptor")
             InteresMora = Reg("InteresMora")
          End If
          Reg.Close
          Set Reg = Nothing
       End If
       
    '************************FDEBITO********************************
    
'    lsql = "SELECT valor FROM debito WHERE id_suscriptor=" & idSuscriptor & " AND " _
'    & " id_fecha=" & gFecha
'    Set Reg1 = New ADODB.Recordset
'    ExecuteSql Reg1, lsql
'    fDebito = 0
'    If gError = 0 Then
'       If Not Reg1.BOF Then
'          fDebito = Reg1("valor")
'          RestarValor fDebito, fAbono
'       End If
'       Reg1.Close
'    End If
'    Set Reg1 = Nothing
       
       
    '***********************REFACTURADO ACUMULADO ******************'
    SQL = "SELECT * FROM refacturado WHERE id_suscriptor=" & idSuscriptor & " " _
    & " AND id_fecha IN (SELECT id_fecha FROM AntFecha)"
    
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Reg.BOF Then
          InteresMoraAcueducto = Reg("InteresMoraAcueducto")
          RestarValor InteresMoraAcueducto, fAbono
          
          InteresMoraAlcantarillado = Reg("InteresMoraAlcantarillado")
          RestarValor InteresMoraAlcantarillado, fAbono
          
          InteresMoraAseo = Reg("InteresMoraAseo")
          RestarValor InteresMoraAseo, fAbono
          
          ValorFijoAcueductoRef = Reg("ValorFijoAcueducto")
          RestarValor ValorFijoAcueductoRef, fAbono
          
          ValorBasicoAcueductoRef = Reg("ValorBasicoAcueducto")
          RestarValor ValorBasicoAcueductoRef, fAbono
          
          ValorSuntuarioAcueductoRef = Reg("ValorSuntuarioAcueducto")
          RestarValor ValorSuntuarioAcueductoRef, fAbono
            
          
          ValorComplementarioAcueductoRef = Reg("ValorComplementarioAcueducto")
          RestarValor ValorComplementarioAcueductoRef, fAbono
                     
          ContribucionAcueductoRef = Reg("ContribucionAcueducto")
          RestarValor ContribucionAcueductoRef, fAbono
                     
         
          
          
          
          
          ValorFijoAlcantarilladoRef = Reg("ValorFijoAlcantarillado")
          RestarValor ValorFijoAlcantarilladoRef, fAbono
          
          ValorBasicoAlcantarilladoRef = Reg("ValorBasicoAlcantarillado")
          RestarValor ValorBasicoAlcantarilladoRef, fAbono
          
          ValorSuntuarioAlcantarilladoRef = Reg("ValorSuntuarioAlcantarillado")
          RestarValor ValorSuntuarioAlcantarilladoRef, fAbono
            
          
          ValorComplementarioAlcantarilladoRef = Reg("ValorComplementarioAlcantarillado")
          RestarValor ValorComplementarioAlcantarilladoRef, fAbono
                     
          ContribucionAlcantarilladoRef = Reg("ContribucionAlcantarillado")
          RestarValor ContribucionAlcantarilladoRef, fAbono
          
          
          
          ValorBarridoAseoRef = Reg("ValorBarridoAseo")
          RestarValor ValorBarridoAseoRef, fAbono
          
          ValorRecoleccionAseoRef = Reg("ValorRecoleccionAseo")
          RestarValor ValorRecoleccionAseoRef, fAbono
          
          ValorDisposicionAseoRef = Reg("ValorDisposicionAseo")
          RestarValor ValorDisposicionAseoRef, fAbono
          
          
          ValorRecaudoAseoRef = Reg("ValorRecaudoAseo")
          RestarValor ValorRecaudoAseoRef, fAbono
          
          ContribucionAseoRef = Reg("ContribucionAseo")
          RestarValor ContribucionAseoRef, fAbono
          
          ValorDebitoRef = Reg("ValorDebito")
          RestarValor ValorDebitoRef, fAbono
          
          InteresMoraDebito = Reg("InteresMoraDebito")
          RestarValor InteresMoraDebito, fAbono
          
          
          OtroInteres = Reg("OtroInteres")
          RestarValor OtroInteres, fAbono
          
          OtroValorRef = Reg("OtroValor")
          RestarValor OtroValorRef, fAbono
          
         
          AjusteRef = Reg("Ajuste")
          RestarValor AjusteRef, fAbono
          
          InteresMoraAjuste = Reg("InteresMoraAjuste")
          RestarValor InteresMoraAjuste, fAbono
          
       End If
       Reg.Close
       Set Reg = Nothing
       
    End If

     
    '******************REFACTURADO DEUDAS *****************'
    
    
    
    
     fInteres = (InteresMora / 100) + 1
    SQL = "SELECT * FROM refacturado_deuda WHERE id_suscriptor=" & idSuscriptor & " " _
    & " AND id_fecha IN (SELECT id_fecha FROM AntFecha)"
    Dim fDeudaValor As Double
    Dim InteresDeuda As Double
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       While Not Reg.EOF
       
             InteresDeuda = Reg("interes")
             RestarValor InteresDeuda, fAbono
             
             fDeudaValor = Reg("valor")
             RestarValor fDeudaValor, fAbono
             
             If InteresDeuda = 0 And fDeudaValor = 0 Then
                SQL = "DELETE FROM refacturado_deuda WHERE id_suscriptor=" & idSuscriptor & " AND id_deuda=" & Reg("id_deuda")
                BaseExecute SQL
             Else
             
                SQL = "INSERT INTO refacturado_deuda (id_suscriptor,id_deuda,id_fecha,valor,interes)  " _
                & " SELECT " & idSuscriptor & ",id_deuda," & gFecha & "," & fDeudaValor & "," _
                & " " & (InteresDeuda * (InteresMora / 100)) & " + " & (fDeudaValor * (InteresMora / 100)) & " " _
                & " FROM refacturado_deuda WHERE id_fecha IN (SELECT id_fecha FROM AntFecha) AND id_deuda=" & Reg("id_deuda")
                BaseExecute SQL
             End If
              '(interes* " & fIn & ")+(valor*" & (InteresMora / 100) & ")
          Reg.MoveNext
       Wend
       Reg.Close
    End If
    
    Set Reg = Nothing
    

       
       
       lsql = "SELECT  facturacion.id,suscriptor.id AS idSuscriptor,detalle_facturacion.ValorFijoAcueducto-detalle_facturacion.SubsidioFijoAcueducto AS ValorFijoAcueducto, " _
       & " detalle_facturacion.ValorFijoAlcantarillado - detalle_facturacion.SubsidioFijoAlcantarillado AS ValorfijoAlcantarillado ," _
       & " (detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)-detalle_facturacion.SubsidioAseo  AS ValorFijoAseo, " _
       & " (detalle_facturacion.ValorBarridoAseo)-(detalle_facturacion.ValorBarridoAseo/iif((detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)=0,1,(detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)))*detalle_facturacion.SubsidioAseo AS ValorBarridoAseo," _
       & " (detalle_facturacion.ValorRecoleccionAseo)-(detalle_facturacion.ValorRecoleccionAseo/iif((detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)=0,1,(detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)))*detalle_facturacion.SubsidioAseo AS ValorRecoleccionAseo," _
       & " (detalle_facturacion.ValorDisposicionAseo)-(detalle_facturacion.ValorDisposicionAseo/iif((detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)=0,1,(detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)))*detalle_facturacion.SubsidioAseo AS ValorDisposicionAseo," _
       & " (detalle_facturacion.ValorRecaudoAseo)-(detalle_facturacion.ValorRecaudoAseo/iif((detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)=0,1,(detalle_facturacion.ValorBarridoAseo+detalle_facturacion.ValorRecoleccionAseo+detalle_facturacion.ValorDisposicionAseo+detalle_facturacion.ValorRecaudoAseo)))*detalle_facturacion.SubsidioAseo AS ValorRecaudoAseo," _
       & " detalle_facturacion.OtroValor-detalle_facturacion.OtroSubsidio AS OtroValor, " _
       & " detalle_facturacion.ValorBasicoAcueducto-(detalle_facturacion.SubsidioBasicoAcueducto) As ValorBasicoAcueducto, " _
       & " detalle_facturacion.ValorComplementarioAcueducto AS ValorComplementarioAcueducto, " _
       & " detalle_facturacion.ValorSuntuarioAcueducto AS ValorSuntuarioAcueducto, " _
       & " detalle_facturacion.ValorBasicoAlcantarillado-(detalle_facturacion.SubsidioBasicoAlcantarillado) AS ValorBasicoAlcantarillado, " _
       & " detalle_facturacion.ValorComplementarioAlcantarillado AS ValorComplementarioAlcantarillado, " _
       & " detalle_facturacion.ValorSuntuarioAlcantarillado AS ValorSuntuarioAlcantarillado, " _
       & " detalle_facturacion.ContribucionAcueducto,detalle_facturacion.ContribucionAlcantarillado,detalle_facturacion.ContribucionAseo, " _
       & " detalle_facturacion.ValorDebito AS ValorDebito,detalle_facturacion.ajuste,uso.InteresMora " _
       & " FROM uso,facturacion,suscriptor,detalle_facturacion " _
       & " WHERE detalle_facturacion.id_factura=facturacion.id " _
       & " AND detalle_facturacion.id_suscriptor=suscriptor.id " _
       & " AND suscriptor.id_uso=uso.id " _
       & " AND facturacion.pagada=false " _
       & " AND facturacion.id=" & idFactura

       
       
     Set Reg = New ADODB.Recordset
     ExecuteSql Reg, lsql
     If gError = 0 Then
        If Not Reg.BOF Then
            ValorFijoAcueducto = Reg("ValorFijoAcueducto")
            RestarValor ValorFijoAcueducto, fAbono
            
            
            ValorBasicoAcueducto = Reg("ValorBasicoAcueducto")
            RestarValor ValorBasicoAcueducto, fAbono
            
            ValorComplementarioAcueducto = Reg("ValorComplementarioAcueducto")
            RestarValor ValorComplementarioAcueducto, fAbono
            
            ValorSuntuarioAcueducto = Reg("ValorSuntuarioAcueducto")
            RestarValor ValorSuntuarioAcueducto, fAbono
            
            ValorContribucionAcueducto = Reg("ContribucionAcueducto")
            RestarValor ValorContribucionAcueducto, fAbono
            
            ValorFijoAlcantarillado = Reg("ValorFijoAlcantarillado")
            RestarValor ValorFijoAlcantarillado, fAbono
            
            ValorBasicoAlcantarillado = Reg("ValorBasicoAlcantarillado")
            RestarValor ValorBasicoAlcantarillado, fAbono
            
            ValorComplementarioAlcantarillado = Reg("ValorComplementarioAlcantarillado")
            RestarValor ValorComplementarioAlcantarillado, fAbono
            
            ValorSuntuarioAlcantarillado = Reg("ValorSuntuarioAcueducto")
            RestarValor ValorSuntuarioAlcantarillado, fAbono
            
            ValorContribucionAlcantarillado = Reg("ContribucionAlcantarillado")
            RestarValor ValorContribucionAlcantarillado, fAbono
            
            
            ValorBarridoAseo = Reg("ValorBarridoAseo")
            RestarValor ValorBarridoAseo, fAbono
            
            ValorRecoleccionAseo = Reg("ValorRecoleccionAseo")
            RestarValor ValorRecoleccionAseo, fAbono
            
            ValorDisposicionAseo = Reg("ValorDisposicionAseo")
            RestarValor ValorDisposicionAseo, fAbono
            
            ValorRecaudoAseo = Reg("ValorRecaudoAseo")
            RestarValor ValorRecaudoAseo, fAbono
            
           
            valorContribucionAseo = Reg("ContribucionAseo")
            RestarValor valorContribucionAseo, fAbono
           
            OtroValor = Reg("OtroValor")
            RestarValor OtroValor, fAbono
            
            ValorDebito = Reg("ValorDebito")
            RestarValor ValorDebito, fAbono
            
            
            Ajuste = Reg("Ajuste")
            RestarValor Ajuste, fAbono
       End If
       Reg.Close
    End If
'    SQL = "SELECT id_suscriptor FROM refacturado " _
'    & " WHERE id_suscriptor=" & Reg("idSuscriptor") & " AND  id_fecha IN (SELECT id_fecha FROM AntFecha)"
'    Set Reg2 = New ADODB.Recordset
'    ExecuteSql Reg2, SQL
'    If gError = 0 Then
       fInteresMoraAcueducto = (InteresMoraAcueducto + ValorFijoAcueductoRef + _
       ValorBasicoAcueductoRef + ValorComplementarioAcueductoRef + ValorSuntuarioAcueductoRef + ContribucionAcueductoRef + _
       ValorFijoAcueducto + ValorBasicoAcueducto + ValorComplementarioAcueducto + ValorSuntuarioAcueducto + _
       ValorContribucionAcueducto) * (InteresMora / 100)
                         
                         
       fInteresMoraAlcantarillado = (InteresMoraAlcantarillado + ValorFijoAlcantarilladoRef + _
       ValorBasicoAlcantarilladoRef + ValorComplementarioAlcantarilladoRef + ValorSuntuarioAlcantarilladoRef + ContribucionAlcantarilladoRef + _
       ValorFijoAlcantarillado + ValorBasicoAlcantarillado + ValorComplementarioAlcantarillado + ValorSuntuarioAlcantarillado + _
       ValorContribucionAlcantarillado) * (InteresMora / 100)
                         
       fInteresMoraAseo = (ValorBarridoAseo + ValorRecoleccionAseo + ValorDisposicionAseo + ValorRecaudoAseo + ContribucionAseo + _
       ValorBarridoAseoRef + ValorRecoleccionAseoRef + ValorDisposicionAseoRef + ValorRecaudoAseoRef + ContribucionAseoRef) * (InteresMora / 100)
                         
       fInteresMoraDebito = (ValorDebito + ValorDebitoRef) * (InteresMora / 100)
       fInteresMoraAjuste = (Ajuste + AjusteRef) * (InteresMora / 100)
       fOtroInteres = (OtroValorRef + OtroValor) * (InteresMora / 100)
       
       fInteres = (InteresMora / 100) + 1
       fInteresMora = InteresMora / 100
       'If Not Reg2.BOF Then
          SQL = "DELETE FROM refacturado WHERE id_suscriptor=" & idSuscriptor & " AND id_fecha=" & gFecha
          BaseExecute SQL
          If gError = 0 Then
               If fInteresMoraAcueducto = 0 And fInteresMoraAlcantarillado = 0 And fInteresMoraAseo = 0 And fInteresMoraDebito = 0 And fOtroInteres = 0 And fInteresMoraAjuste = 0 Then
                  SQL = "DELETE FROM refacturado WHERE id_suscriptor=" & idSuscriptor
                  BaseExecute SQL
               Else
                    SQL = "INSERT INTO refacturado (id_suscriptor,id_fecha,InteresMoraAcueducto,InteresMoraAlcantarillado,InteresMoraAseo,InteresMoraDebito,OtroInteres," _
                    & " ValorFijoAcueducto,ValorBasicoAcueducto,ValorComplementarioAcueducto,ValorSuntuarioAcueducto,ContribucionAcueducto,ValorFijoAlcantarillado, " _
                    & " ValorBasicoAlcantarillado,ValorComplementarioAlcantarillado,ValorSuntuarioAlcantarillado, ContribucionAlcantarillado, " _
                    & " ValorBarridoAseo,ValorRecoleccionAseo,ValorDisposicionAseo,ValorRecaudoAseo,ContribucionAseo,OtroValor,ValorDebito,ajuste,InteresMoraAjuste) " _
                    & " VALUES (" & idSuscriptor & "," & gFecha & "," & fInteresMoraAcueducto & "," & fInteresMoraAlcantarillado & ", " _
                    & " " & fInteresMoraAseo & "," & fInteresMoraDebito & "," & fOtroInteres & "," & ValorFijoAcueductoRef + ValorFijoAcueducto & ", " _
                    & " " & ValorBasicoAcueductoRef + ValorBasicoAcueducto & "," & ValorComplementarioAcueductoRef + ValorComplementarioAcueducto & ", " _
                    & " " & ValorSuntuarioAcueductoRef + ValorSuntuarioAcueducto & "," & ContribucionAcueductoRef + ContribucionAcueducto & "," _
                    & " " & ValorFijoAlcantarilladoRef + ValorFijoAlcantarillado & ", " _
                    & " " & ValorBasicoAlcantarilladoRef + ValorBasicoAlcantarillado & "," & ValorComplementarioAlcantarilladoRef + ValorComplementarioAlcantarillado & ", " _
                    & " " & ValorSuntuarioAlcantarilladoRef + ValorSuntuarioAlcantarillado & "," & ContribucionAlcantarilladoRef + ContribucionAlcantarillado & "," _
                    & " " & ValorBarridoAseoRef + ValorBarridoAseo & ", " & ValorRecoleccionAseoRef + ValorRecoleccionAseo & "," & ValorDisposicionAseoRef + ValorDisposicionAseo & ", " _
                    & " " & ValorRecaudoAseoRef + ValorRecaudoAseo & "," & ContribucionAseoRef + valorContribucionAseo & "," & OtroValorRef + OtroValor & "," _
                    & " " & ValorDebitoRef + ValorDebito & "," & IIf((Ajuste + AjusteRef), (Ajuste + AjusteRef), 0) & "," & IIf(fInteresMoraAjuste > 0, fInteresMoraAjuste, 0) & " )"
                    BaseExecute SQL
               End If
          End If
                            
                            
    Dim fInteres_deuda As Double
    Dim valorCuota As Double
    lsql = "SELECT control_deuda.valor_cuota,control_deuda.id_deuda FROM control_deuda INNER JOIN refacturado_deuda " _
    & " ON refacturado_deuda.id_deuda=control_deuda.id_deuda AND " _
    & " refacturado_deuda.id_suscriptor=control_deuda.id_suscriptor " _
    & " WHERE control_deuda.id_suscriptor=" & idSuscriptor & " " _
    & " AND refacturado_deuda.id_fecha IN (SELECT id_fecha FROM AntFecha)"
    Set R2 = New ADODB.Recordset
    ExecuteSql R2, lsql
    If gError = 0 Then
       While Not R2.EOF
             fInteres_deuda = valorCuota * (InteresMora / 100)
             RestarValor fInteres_deuda, fAbono
             
             valorCuota = R2("valor_cuota")
             RestarValor valorCuota, fAbono
             
             
             
             lsql = "UPDATE refacturado_deuda set valor=valor+" & valorCuota & ", " _
             & " interes=interes+" & fInteres_deuda & " WHERE id_fecha =" & gFecha & " AND " _
             & " id_suscriptor=" & idSuscriptor & " AND id_deuda=" & R2("id_deuda")
             BaseExecute lsql
             
             R2.MoveNext
       Wend
       R2.Close
    End If
    
    
    lsql = "SELECT * FROM deuda_sin_refacturado WHERE id_suscriptor=" & idSuscriptor
    ExecuteSql R2, lsql
    If gError = 0 Then
       While Not R2.EOF
              
             valorCuota = R2("valor_cuota")
             RestarValor valorCuota, fAbono
              
             fInteres_deuda = valorCuota * (InteresMora / 100)
             RestarValor fInteres_deuda, fAbono
             
             lsql = "INSERT INTO refacturado_deuda (id_suscriptor,id_deuda,id_fecha,valor,interes) VALUES " _
             & " (" & idSuscriptor & "," & R2("id_deuda") & "," & gFecha & "," & valorCuota & "," & fInteres_deuda & ")"
             BaseExecute lsql
             
             
             R2.MoveNext
       Wend
       R2.Close
    End If
    
              
    lsql = "SELECT * FROM control_deuda WHERE id_suscriptor=" & idSuscriptor
    ExecuteSql R2, lsql
    If gError = 0 Then
       While Not R2.EOF
             lsql = "INSERT INTO pagos_deuda (id_deuda_suscriptor,id_fecha) VALUES " _
             & " (" & R2("id") & "," & gFecha & ")"
             BaseExecute lsql
            R2.MoveNext
       Wend
       R2.Close
    End If
    Set R2 = Nothing
End Sub

Private Sub ActualizarDeuda(idSuscriptor As Long, InteresMora As Double)
Dim R1 As ADODB.Recordset
Dim R2 As ADODB.Recordset
Dim fIn As Double
Dim fInteres_deuda As Double
Dim lsql As String
    
    fIn = (InteresMora / 100) + 1
              
    lsql = "DELETE FROM refacturado_deuda WHERE id_suscriptor=" & idSuscriptor & " " _
    & " AND id_fecha=" & gFecha
    BaseExecute lsql
              
    lsql = "INSERT INTO  refacturado_deuda (id_suscriptor,id_deuda,id_fecha,valor,interes) " _
    & " SELECT id_suscriptor,id_deuda," & gFecha & ", " _
    & " valor,(interes* " & fIn & ")+(valor*" & (InteresMora / 100) & ") " _
    & " FROM refacturado_deuda WHERE id_suscriptor=" & idSuscriptor & " " _
    & " AND id_fecha IN (SELECT id_fecha FROM AntFecha) "
    BaseExecute lsql
              
              
    lsql = "SELECT temp_deuda_suscriptor.valor_cuota,temp_deuda_suscriptor.id_deuda " _
    & " FROM temp_deuda_suscriptor INNER JOIN refacturado_deuda " _
    & " ON refacturado_deuda.id_deuda=temp_deuda_suscriptor.id_deuda AND " _
    & " refacturado_deuda.id_suscriptor=temp_deuda_suscriptor.id_suscriptor " _
    & " WHERE temp_deuda_suscriptor.id_suscriptor=" & idSuscriptor & " " _
    & " AND refacturado_deuda.id_fecha IN (SELECT id_fecha FROM AntFecha)"
    Set R2 = New ADODB.Recordset
    ExecuteSql R2, lsql
    If gError = 0 Then
       While Not R2.EOF
             fInteres_deuda = R2("valor_cuota") * InteresMora / 100
             
                   
             lsql = "INSERT INTO  refacturado_deuda (id_suscriptor,id_deuda,id_fecha,valor,interes) " _
             & " SELECT " & idSuscriptor & "," & R2("id_deuda") & "," & gFecha & ", " _
             & " valor+ " & R2("valor_cuota") & ", " _
             & " interes* " & fIn & "+ " & [fInteres_deuda] & "" _
             & " FROM refacturado_deuda WHERE id_suscriptor=" & idSuscriptor & " " _
             & " AND id_deuda=" & R2("id_deuda") & " AND id_fecha IN (SELECT id_fecha FROM AntFecha) "
             
             
             lsql = "UPDATE refacturado_deuda set valor=valor+" & R2("valor_cuota") & ", " _
             & " interes=interes+" & fInteres_deuda & " WHERE id_fecha =" & gFecha & " AND " _
             & " id_suscriptor=" & idSuscriptor & " AND id_deuda=" & R2("id_deuda")
             BaseExecute lsql
             
             R2.MoveNext
       Wend
       R2.Close
    End If
    
    
    lsql = "SELECT * FROM deuda_sin_refacturado WHERE id_suscriptor=" & idSuscriptor
    ExecuteSql R2, lsql
    If gError = 0 Then
       While Not R2.EOF
             fInteres_deuda = R2("valor_cuota") * InteresMora / 100
             lsql = "INSERT INTO refacturado_deuda (id_suscriptor,id_deuda,id_fecha,valor,interes) VALUES " _
             & " (" & idSuscriptor & "," & R2("id_deuda") & "," & gFecha & "," & R2("valor_cuota") & "," & fInteres_deuda & ")"
             BaseExecute lsql
             
             
             R2.MoveNext
       Wend
       R2.Close
    End If
    
              
    lsql = "SELECT * FROM temp_deuda_suscriptor WHERE id_suscriptor=" & idSuscriptor
    ExecuteSql R2, lsql
    If gError = 0 Then
       While Not R2.EOF
             lsql = "INSERT INTO pagos_deuda (id_deuda_suscriptor,id_fecha) VALUES " _
             & " (" & R2("id") & "," & gFecha & ")"
             BaseExecute lsql
            R2.MoveNext
       Wend
       R2.Close
    End If
    Set R2 = Nothing
       
End Sub
Private Sub Cuadrar_Conceptos(fValor As Double, intFactura As Long, intSuscriptor As Long, fInteres As Double)
Dim Interes As Double
Dim fDeudaValor As Double
Dim InteresDeuda As Double
Dim Reg As ADODB.Recordset
Dim R1 As ADODB.Recordset
Dim ValorFijoAcueductoRef As Double
Dim ValorBasicoAcueductoRef As Double: Dim ValorComplementarioAcueductoRef As Double
Dim ValorSuntuarioAcueductoRef As Double
Dim ValorFijoAlcantarilladoRef As Double: Dim ValorBasicoAlcantarilladoRef As Double
Dim ValorComplementarioAlcantarilladoRef As Double: Dim ValorSuntuarioAlcantarilladoRef As Double
Dim ValorBarridoAseoRef As Double: Dim ValorRecoleccionAseoRef As Double: Dim ValorDisposicionAseoRef As Double
Dim OtroValorRef As Double: Dim ValorRecaudoAseoRef As Double
Dim InteresMoraAcueducto As Double: Dim InteresMoraAlcantarillado As Double
Dim InteresMoraAseo As Double: Dim InteresMoraDebito As Double
Dim ValorDebitoRef As Double: Dim ValorContribucionAlcantarillado As Double
Dim ContribucionAcueductoRef As Double: Dim ContribucionAlcantarilladoRef As Double: Dim ContribucionAseoRef As Double
Dim ValorDeudaParcial As Double
Dim ValorDeuda As Double: Dim fInteres_deuda As Double
Dim AjusteRef As Double
Dim InteresMoraAjuste As Double
Dim ValorFijoAcueducto As Double: Dim ValorContribucionAcueducto As Double
Dim ValorBasicoAcueducto As Double: Dim ValorComplementarioAcueducto As Double
Dim ValorSuntuarioAcueducto As Double: Dim valorContribucionAseo   As Double
Dim ValorFijoAlcantarillado As Double: Dim ValorBasicoAlcantarillado As Double
Dim ValorComplementarioAlcantarillado As Double: Dim ValorSuntuarioAlcantarillado As Double
Dim ValorBarridoAseo As Double: Dim ValorRecoleccionAseo As Double: Dim ValorDisposicionAseo As Double
Dim OtroValor As Double: Dim ValorRecaudoAseo As Double
Dim ValorDebito As Double: Dim OtroInteres As Double
Dim ContribucionAcueducto As Double: Dim ContribucionAlcantarillado As Double: Dim ContribucionAseo As Double
Dim Ajuste As Double
Dim m_Deuda() As Double
Dim i As Integer
Dim bEncontrada As Boolean
Dim j As Integer

   ReDim Preserve m_Deuda(2, 0) As Double
   m_Deuda(0, 0) = -1
   m_Deuda(1, 0) = -1
   m_Deuda(2, 0) = -1
   
            Interes = (fInteres / 100) + 1
    i = 1
            SQL = "SELECT * FROM refacturado_deuda WHERE id_suscriptor=" & intSuscriptor & " " _
            & " AND id_fecha IN (SELECT id_fecha FROM AntFecha) "
            Set Reg = New ADODB.Recordset
            ExecuteSql Reg, SQL
            If gError = 0 Then
               While Not Reg.EOF
                  ReDim Preserve m_Deuda(2, i)
                  m_Deuda(0, i) = Reg("id_deuda")
                  
                  m_Deuda(1, i) = Reg("valor")
                  RestarValor m_Deuda(1, i), fValor
                  
                  m_Deuda(2, i) = Reg("interes")
                  RestarValor m_Deuda(2, i), fValor
                  
                  
                  m_Deuda(2, i) = (m_Deuda(2, i) * Interes) + (m_Deuda(1, i) * (fInteres / 100))
                  i = i + 1
                  Reg.MoveNext
               Wend
               Reg.Close
            End If
            Set Reg = Nothing
            
'''''''''''''''''''''''''''REFACTURADO ''''''''''''''''''''''''''''''''''''

    
       Set Reg = New ADODB.Recordset
       SQL = "SELECT * FROM refacturado WHERE " _
       & " id_suscriptor=" & intSuscriptor & " " _
       & " AND id_fecha IN (SELECT id_fecha FROM AntFecha) "
       ExecuteSql Reg, SQL
       If gError = 0 Then
          If Not Reg.BOF Then
             ValorFijoAcueductoRef = IsNumberNull(Reg("ValorFijoAcueducto"))
             RestarValor ValorFijoAcueductoRef, fValor
             
             ValorBasicoAcueductoRef = IsNumberNull(Reg("ValorBasicoAcueducto"))
             RestarValor ValorBasicoAcueductoRef, fValor
              
             
             ValorComplementarioAcueductoRef = IsNumberNull(Reg("ValorComplementarioAcueducto"))
             RestarValor ValorComplementarioAcueductoRef, fValor
             
             ValorSuntuarioAcueductoRef = IsNumberNull(Reg("ValorSuntuarioAcueducto"))
             RestarValor ValorSuntuarioAcueductoRef, fValor
             
             ValorFijoAlcantarilladoRef = IsNumberNull(Reg("ValorFijoAlcantarillado"))
             RestarValor ValorFijoAlcantarilladoRef, fValor

             
             ValorBasicoAlcantarilladoRef = IsNumberNull(Reg("ValorBasicoAlcantarillado"))
             RestarValor ValorBasicoAlcantarilladoRef, fValor
            
             
             ValorComplementarioAlcantarilladoRef = IsNumberNull(Reg("valorComplementarioAlcantarillado"))
             RestarValor ValorComplementarioAlcantarilladoRef, fValor
             
             ValorSuntuarioAlcantarilladoRef = IsNumberNull(Reg("valorSuntuarioAlcantarillado"))
             RestarValor ValorSuntuarioAlcantarilladoRef, fValor
             
             ValorBarridoAseoRef = IsNumberNull(Reg("ValorBarridoAseo"))
             RestarValor ValorBarridoAseoRef, fValor
                                 
             ValorRecoleccionAseoRef = IsNumberNull(Reg("ValorRecoleccionAseo"))
             RestarValor ValorRecoleccionAseoRef, fValor
             
             ValorDisposicionAseoRef = IsNumberNull(Reg("ValorDisposicionAseo"))
             RestarValor ValorDisposicionAseoRef, fValor
             
             ValorRecaudoAseoRef = IsNumberNull(Reg("ValorRecaudoAseo"))
            RestarValor ValorRecaudoAseoRef, fValor
             
             
             OtroValorRef = IsNumberNull(Reg("OtroValor"))
             RestarValor OtroValorRef, fValor
             
             InteresMoraAcueducto = IsNumberNull(Reg("InteresMoraAcueducto"))
              RestarValor InteresMoraAcueducto, fValor
             
             InteresMoraAlcantarillado = IsNumberNull(Reg("InteresMoraAlcantarillado"))
             RestarValor InteresMoraAlcantarillado, fValor
             
             
             
             InteresMoraAseo = IsNumberNull(Reg("InteresMoraAseo"))
             RestarValor InteresMoraAseo, fValor
             
             InteresMoraDebito = IsNumberNull(Reg("InteresMoraDebito"))
             RestarValor InteresMoraDebito, fValor
             
             
             ValorDebitoRef = IsNumberNull(Reg("ValorDebito"))
             RestarValor ValorDebitoRef, fValor
             
             ContribucionAcueductoRef = IsNumberNull(Reg("ContribucionAcueducto"))
             RestarValor ContribucionAcueductoRef, fValor
             
              ContribucionAlcantarilladoRef = IsNumberNull(Reg("ContribucionAlcantarillado"))
             RestarValor ContribucionAlcantarilladoRef, fValor
             
              ContribucionAseoRef = IsNumberNull(Reg("ContribucionAseo"))
             RestarValor ContribucionAseoRef, fValor
             
             
             OtroInteres = IsNumberNull(Reg("OtroInteres"))
              RestarValor OtroInteres, fValor
             
             
          End If
          Reg.Close
       End If
       Set Reg = Nothing
       
            SQL = "SELECT sum(valor_cuota) AS Valor,id_deuda  FROM control_deuda " _
            & " WHERE id_deuda IN (SELECT id_deuda FROM refacturado_deuda " _
            & " WHERE id_fecha IN (SELECT id_fecha FROM AntFecha) AND " _
            & " control_deuda.id_suscriptor=refacturado_deuda.id_suscriptor ) " _
            & " AND control_deuda.id_suscriptor=" & intSuscriptor & " " _
            & " GROUP BY control_deuda.id_deuda "
            Set R1 = New ADODB.Recordset
            ExecuteSql R1, SQL
            ValorDeuda = 0
            
         If gError = 0 Then
       
           While Not R1.EOF
                 
                 ValorDeuda = R1("valor")
                 RestarValor ValorDeuda, fValor
                 
                 
                 
                 If ValorDeuda > 0 Then
                    For j = 1 To UBound(m_Deuda, 2)
                        If m_Deuda(0, j) = R1("id_deuda") Then
                        
                           m_Deuda(1, j) = m_Deuda(1, j) + ValorDeuda
                          
                           m_Deuda(2, j) = m_Deuda(2, j) + (ValorDeuda * (fInteres / 100))
                           Exit For
                        End If
                     Next j
                 End If
                 
               R1.MoveNext
           Wend
           R1.Close
         End If
         
         Set R1 = Nothing
       
       
            SQL = "SELECT sum(valor_cuota) AS Valor,id_deuda  FROM control_deuda " _
            & " WHERE id_deuda NOT IN (SELECT id_deuda FROM refacturado_deuda " _
            & " WHERE id_fecha IN (SELECT id_fecha FROM AntFecha) AND " _
            & " control_deuda.id_suscriptor=refacturado_deuda.id_suscriptor ) " _
            & " AND control_deuda.id_suscriptor=" & intSuscriptor & " " _
            & " GROUP BY control_deuda.id_deuda "
            Set R1 = New ADODB.Recordset
            ExecuteSql R1, SQL
            ValorDeuda = 0
            
         If gError = 0 Then
       
           While Not R1.EOF
                 
                 ValorDeuda = R1("valor")
                 RestarValor ValorDeuda, fValor
                 If ValorDeuda > 0 Then
                    ReDim Preserve m_Deuda(2, i)
                    m_Deuda(0, i) = R1("id_deuda")
                    m_Deuda(1, i) = ValorDeuda
                          
                    m_Deuda(2, i) = (ValorDeuda * (fInteres / 100))
                    i = i + 1
                 End If
                 R1.MoveNext
           Wend
           R1.Close
         End If
         
         
         
         
        Set R1 = Nothing
       
     



    ''''''''''''''''''''''''''''REFACTURADO DEUDAS ''''''''''''''''''''''''
  


    
    
  
          

     
                

    
    
    
    
    
    ''''''''''''''''''''''''''''FIN REFACTURADO DEUDAS '''''''''''''''
    
    
       
       '''''''''''''''''''''''FIN REFACTURADO ''''''''''''''''''''''
       
       
        '''''''''''''''''''''INCLUIR DEUDAS EN EL REFACTURADO''''''''''''''''''''''''''''''''
       
      
        
        If UBound(m_Deuda, 2) > 0 Then
           For i = 1 To UBound(m_Deuda, 2)
               SQL = "DELETE FROM refacturado_deuda WHERE id_suscriptor=" & intSuscriptor & " " _
               & " AND id_deuda=" & m_Deuda(0, i) & " AND id_fecha=" & gFecha
               BaseExecute SQL
               
'               InteresDeuda = m_Deuda(2, i)
'               RestarValor InteresDeuda, fValor
'
'               fDeudaValor = m_Deuda(1, i)
'               RestarValor fDeudaValor, fValor
               
               If m_Deuda(1, i) <> 0 Then
               
                    SQL = "INSERT INTO  refacturado_deuda (id_suscriptor,id_deuda,id_fecha,valor,interes) " _
                    & " VALUES (" & intSuscriptor & "," & m_Deuda(0, i) & "," & gFecha & "," _
                    & " " & Round(m_Deuda(1, i)) & "," & Round(m_Deuda(2, i)) & ")"
                    BaseExecute SQL
               End If
'               & " SELECT " & intSuscriptor & "," & R1("id_deuda") & "," & gFecha & ", " _
'               & " valor+ " & ValorDeudaParcial & ", " _
'               & " cdbl(format(interes* " & Interes & "+ " & fInteres_deuda & "+(valor*" & fInteres / 100 & "),'#.00')) " _
'               & " FROM refacturado_deuda WHERE id_suscriptor=" & intSuscriptor & " " _
'               & " AND id_deuda=" & R1("id_deuda") & " AND id_fecha IN (SELECT id_fecha FROM AntFecha) "
           Next i
        End If
        
        
        '''''''''''''''''''PAGAR DEUDAS ''''''''''''''''''''''
        
        Set R1 = New ADODB.Recordset
        SQL = "SELECT * FROM control_deuda WHERE id_suscriptor=" & intSuscriptor
        ExecuteSql R1, SQL
        If gError = 0 Then
           While Not R1.EOF
                 SQL = "DELETE FROM pagos_deuda WHERE id_fecha=" & gFecha & " AND id_deuda_suscriptor=" & R1("id")
                 BaseExecute SQL
                 
                 SQL = "INSERT INTO pagos_deuda (id_deuda_suscriptor,id_fecha) VALUES " _
                 & " (" & R1("id") & "," & gFecha & ")"
                 BaseExecute SQL
                 
              R1.MoveNext
           Wend
           R1.Close
        End If
        Set R1 = Nothing
        
        ''''''''''''''''''''FIN PAGAR DEUDAS ''''''''''''''''''
              
         ''''''''''''''''''''''''FACTURACION''''''''''''''''''''''''''''
         
            
       SQL = "SELECT  facturacion.id,suscriptor.id AS idSuscriptor,(detalle_facturacion.ValorFijoAcueducto-detalle_facturacion.SubsidioFijoAcueducto+iif(Abs(detalle_facturacion.ajuste)>=5,(10-Abs(detalle_facturacion.ajuste)),detalle_facturacion.ajuste)) AS ValorFijoAcueducto, " _
       & " (detalle_facturacion.ValorFijoAlcantarillado - detalle_facturacion.SubsidioFijoAlcantarillado) AS ValorfijoAlcantarillado ," _
       & " (detalle_facturacion.ValorBarridoAseo- SubsidioBarridoAseo) AS ValorBarridoAseo," _
       & " (detalle_facturacion.ValorRecoleccionAseo-SubsidioRecoleccionAseo) AS ValorRecoleccionAseo," _
       & " (detalle_facturacion.ValorDisposicionAseo-SubsidioDisposicionAseo) AS ValorDisposicionAseo," _
       & " (detalle_facturacion.ValorRecaudoAseo-SubsidioRecaudoAseo) AS ValorRecaudoAseo," _
       & " (detalle_facturacion.OtroValor-detalle_facturacion.OtroSubsidio) AS OtroValor, " _
       & " (detalle_facturacion.ValorBasicoAcueducto-detalle_facturacion.SubsidioBasicoAcueducto) As ValorBasicoAcueducto, " _
       & " detalle_facturacion.ValorComplementarioAcueducto AS ValorComplementarioAcueducto, " _
       & " detalle_facturacion.ValorSuntuarioAcueducto AS ValorSuntuarioAcueducto, " _
       & " (detalle_facturacion.ValorBasicoAlcantarillado-detalle_facturacion.SubsidioBasicoAlcantarillado) AS ValorBasicoAlcantarillado, " _
       & " detalle_facturacion.ValorComplementarioAlcantarillado AS ValorComplementarioAlcantarillado, " _
       & " detalle_facturacion.ValorSuntuarioAlcantarillado AS ValorSuntuarioAlcantarillado, " _
       & " detalle_facturacion.ContribucionAcueducto,detalle_facturacion.ContribucionAlcantarillado,detalle_facturacion.ContribucionAseo, " _
       & " detalle_facturacion.ValorDebito AS ValorDebito,detalle_facturacion.ajuste,uso.InteresMora " _
       & " FROM uso,facturacion,suscriptor,detalle_facturacion " _
       & " WHERE detalle_facturacion.id_factura=facturacion.id " _
       & " AND detalle_facturacion.id_suscriptor=suscriptor.id " _
       & " AND suscriptor.id_uso=uso.id " _
       & " AND facturacion.pagada=false " _
       & " AND facturacion.id_fecha=" & gFecha & " " _
       & " AND facturacion.id=" & intFactura & " " _
       & " ORDER BY suscriptor.sistema ASC"
       Set Reg = New ADODB.Recordset
       ExecuteSql Reg, SQL
       If gError = 0 Then
          If Not Reg.BOF Then
             ValorFijoAcueducto = IsNumberNull(Reg("ValorFijoAcueducto"))
             RestarValor ValorFijoAcueducto, fValor
             
            ValorBasicoAcueducto = Reg("ValorBasicoAcueducto")
            RestarValor ValorBasicoAcueducto, fValor
            
            ValorComplementarioAcueducto = Reg("ValorComplementarioAcueducto")
            RestarValor ValorComplementarioAcueducto, fValor
            
            ValorSuntuarioAcueducto = Reg("ValorSuntuarioAcueducto")
            RestarValor ValorSuntuarioAcueducto, fValor
            
            ValorContribucionAcueducto = Reg("ContribucionAcueducto")
            RestarValor ValorContribucionAcueducto, fValor
            
            ValorFijoAlcantarillado = Reg("ValorFijoAlcantarillado")
            RestarValor ValorFijoAlcantarillado, fValor
            
            ValorBasicoAlcantarillado = Reg("ValorBasicoAlcantarillado")
            RestarValor ValorBasicoAlcantarillado, fValor
            
            ValorComplementarioAlcantarillado = Reg("ValorComplementarioAlcantarillado")
            RestarValor ValorComplementarioAlcantarillado, fValor
            
            ValorSuntuarioAlcantarillado = Reg("ValorSuntuarioAlcantarillado")
            RestarValor ValorSuntuarioAlcantarillado, fValor
            
            ValorContribucionAlcantarillado = Reg("ContribucionAlcantarillado")
            RestarValor ValorContribucionAlcantarillado, fValor
            
            
            ValorBarridoAseo = Reg("ValorBarridoAseo")
            RestarValor ValorBarridoAseo, fValor
            
            ValorRecoleccionAseo = Reg("ValorRecoleccionAseo")
            RestarValor ValorRecoleccionAseo, fValor
            
            ValorDisposicionAseo = Reg("ValorDisposicionAseo")
            RestarValor ValorDisposicionAseo, fValor
            
            ValorRecaudoAseo = Reg("ValorRecaudoAseo")
            RestarValor ValorRecaudoAseo, fValor
            
           
            valorContribucionAseo = Reg("ContribucionAseo")
            RestarValor valorContribucionAseo, fValor
           
            OtroValor = Reg("OtroValor")
            RestarValor OtroValor, fValor
            
            ValorDebito = Reg("ValorDebito")
            RestarValor ValorDebito, fValor
            
            
          
              
              
              
              
            SQL = "DELETE FROM refacturado WHERE id_suscriptor=" & intSuscriptor & "  " _
            & " AND id_fecha=" & gFecha
            BaseExecute SQL
            If gError = 0 Then
               If (InteresMoraAcueducto + ValorFijoAcueductoRef + ValorBasicoAcueductoRef + ContribucionAcueductoRef + _
                     ValorComplementarioAcueductoRef + ValorContribucionAcueducto + ValorSuntuarioAcueductoRef + ValorFijoAcueducto + ValorBasicoAcueducto + ValorComplementarioAcueducto + ValorSuntuarioAcueducto + _
                     InteresMoraAlcantarillado + ValorFijoAlcantarilladoRef + ValorBasicoAlcantarilladoRef + ValorContribucionAlcantarillado + ContribucionAlcantarilladoRef + _
                     ValorComplementarioAlcantarilladoRef + ValorSuntuarioAlcantarilladoRef + ValorFijoAlcantarillado + ValorBasicoAlcantarillado + ValorComplementarioAlcantarillado + ValorSuntuarioAlcantarillado + _
                     InteresMoraAseo + ValorBarridoAseoRef + ValorRecoleccionAseoRef + ValorRecaudoAseoRef + ValorDisposicionAseoRef + ValorBarridoAseo + ValorRecoleccionAseo + ValorRecaudoAseo + _
                     ValorDisposicionAseo + ContribucionAseo + ContribucionAseoRef + _
                     InteresMoraDebito + ValorDebitoRef + ValorDebito + OtroInteres + OtroValor + OtroValorRef) <> 0 Then
                    
                                     
                    SQL = "INSERT INTO refacturado (id_suscriptor,id_fecha,InteresMoraAcueducto,InteresMoraAlcantarillado,InteresMoraAseo,InteresMoraDebito,OtroInteres," _
                    & "  ValorFijoAcueducto,ValorBasicoAcueducto,ValorComplementarioAcueducto,ValorSuntuarioAcueducto,ContribucionAcueducto,ValorFijoAlcantarillado, " _
                    & "  ValorBasicoAlcantarillado,ValorComplementarioAlcantarillado,ValorSuntuarioAlcantarillado, ContribucionAlcantarillado, " _
                    & "  ValorBarridoAseo,ValorRecoleccionAseo,ValorDisposicionAseo,ValorRecaudoAseo,ContribucionAseo,OtroValor,ValorDebito) " _
                    & "  VALUES (" & intSuscriptor & "," & gFecha & "," & Round((InteresMoraAcueducto * Interes) + (ValorFijoAcueductoRef + ValorBasicoAcueductoRef + ContribucionAcueductoRef + _
                     ValorComplementarioAcueductoRef + ValorContribucionAcueducto + ValorSuntuarioAcueductoRef + ValorFijoAcueducto + ValorBasicoAcueducto + ValorComplementarioAcueducto + ValorSuntuarioAcueducto) * (fInteres / 100)) & " ," _
                    & " " & Round((InteresMoraAlcantarillado * Interes) + (ValorFijoAlcantarilladoRef + ValorBasicoAlcantarilladoRef + ValorContribucionAlcantarillado + ContribucionAlcantarilladoRef + _
                     ValorComplementarioAlcantarilladoRef + ValorSuntuarioAlcantarilladoRef + ValorFijoAlcantarillado + ValorBasicoAlcantarillado + ValorComplementarioAlcantarillado + ValorSuntuarioAlcantarillado) * (fInteres / 100)) & "," _
                    & " " & Round((InteresMoraAseo * Interes) + (ValorBarridoAseoRef + ValorRecoleccionAseoRef + ValorRecaudoAseoRef + ValorDisposicionAseoRef + ValorBarridoAseo + ValorRecoleccionAseo + ValorRecaudoAseo + ValorDisposicionAseo + ContribucionAseo + ContribucionAseoRef) * (fInteres / 100)) & "," _
                    & " " & Round((InteresMoraDebito * Interes) + (ValorDebitoRef + ValorDebito) * (fInteres / 100)) & "," & Round((OtroInteres * Interes) + (OtroValor + OtroValorRef) * (fInteres / 100)) & "," & ValorFijoAcueducto + ValorFijoAcueductoRef & "," & ValorBasicoAcueducto + ValorBasicoAcueductoRef & ", " _
                    & " " & ValorComplementarioAcueducto + ValorComplementarioAcueductoRef & "," & ValorSuntuarioAcueducto + ValorSuntuarioAcueductoRef & "," & ContribucionAcueductoRef + ValorContribucionAcueducto & "," & ValorFijoAlcantarilladoRef + ValorFijoAlcantarillado & "," _
                    & " " & ValorBasicoAlcantarillado + ValorBasicoAlcantarilladoRef & "," & ValorComplementarioAlcantarillado + ValorComplementarioAlcantarilladoRef & "," & ValorSuntuarioAlcantarillado + ValorSuntuarioAlcantarilladoRef & "," _
                    & " " & ValorContribucionAlcantarillado + ContribucionAlcantarilladoRef & "," & ValorBarridoAseoRef + ValorBarridoAseo & "," & ValorRecoleccionAseo + ValorRecoleccionAseoRef & "," & ValorDisposicionAseo + ValorDisposicionAseoRef & ", " _
                    & " " & ValorRecaudoAseo + ValorRecaudoAseoRef & "," & ContribucionAseo + ContribucionAseoRef & "," & OtroValor + OtroValorRef & "," & ValorDebito + ValorDebitoRef & ")"
                    BaseExecute SQL
               End If
            End If
                   
          End If
          Reg.Close
       End If
       
    Set Reg = Nothing
    
    '''''''''''''''''''''''''''FIN  REFACTURADO ''''''''''''''''''''''''''''''''''''
    
End Sub
Private Sub Cierre()
Dim Reg As ADODB.Recordset
Dim Reg1 As ADODB.Recordset
Dim Reg2 As ADODB.Recordset
Dim lsql As String
Dim Resp As String
Dim idFecha As Long
Dim dFecha As Date
Dim iCodigo As Long
Dim fInteresMora As Double: Dim fAcueducto As Double
Dim fFijo As Double: Dim fAseo As Double
Dim fAlcantarillado As Double: Dim fOtroValor As Double
Dim fInteresMoraAcueducto As Double: Dim fInteresMoraAlcantarillado As Double
Dim fInteresMoraAseo As Double: Dim fOtroInteres As Double
Dim fInteresMoraAjuste As Double
Dim idSuscriptor As Long
Dim fInteres As Double
Dim fInteres_deuda  As Double
Dim cont As Long
Dim fDebito As Double
Dim fValor As Double
Dim fInteresMoraDebito As Double
  Screen.MousePointer = vbHourglass
    SQL = "SELECT * FROM facturacion WHERE facturacion.id_fecha=" & gFecha
    Set Reg2 = New ADODB.Recordset
    ExecuteSql Reg2, SQL
    If gError = 0 Then
       If Reg2.BOF Then
          MsgBox "NO SE PUEDE REALIZAR EL CIERRE HASTA " & vbCrLf & "QUE FACTURE EL MES ", vbCritical
          Screen.MousePointer = vbDefault
          Reg2.Close
          Set Reg2 = Nothing
          Exit Sub
          
       End If
       Reg2.Close
       Set Reg2 = Nothing
    End If


    Resp = MsgBox("Desea Hacer el Cierre para el mes de " & UCase(Format(gNomFecha, "mmmm yyyy")) & "", vbYesNo + vbDefaultButton2)
    If Resp = vbNo Then Exit Sub
    
    If Resp = vbYes Then
       

       idFecha = gFecha
       lsql = "SELECT suscriptor.id FROM facturacion,suscriptor,detalle_facturacion " _
       & " WHERE detalle_facturacion.id_factura=facturacion.id " _
       & " AND detalle_facturacion.id_suscriptor=suscriptor.id " _
       & " AND facturacion.pagada=true AND facturacion.id_fecha=" & idFecha & " ORDER BY suscriptor.sistema ASC"
       
       Set Reg = New ADODB.Recordset
       ExecuteSql Reg, lsql
       If gError = 0 Then
          While Not Reg.EOF
          
          
                lsql = "SELECT * FROM control_deuda WHERE id_suscriptor=" & Reg("id")
                Set Reg2 = New ADODB.Recordset
                ExecuteSql Reg2, lsql
                If gError = 0 Then
                   While Not Reg2.EOF
                         lsql = "INSERT INTO pagos_deuda (id_deuda_suscriptor,id_fecha) VALUES " _
                         & " (" & Reg2("id") & "," & gFecha & ")"
                         BaseExecute lsql
                         
                      Reg2.MoveNext
                   Wend
                   Reg2.Close
                   
                End If
                Set Reg2 = Nothing

                lsql = "UPDATE suscriptor set atraso=0 " _
                & " WHERE id=" & Reg("id")
                BaseExecute lsql
                
                lsql = "DELETE FROM refacturado WHERE id_suscriptor=" & Reg("id") & " " _
                & " AND id_fecha IN (SELECT id_fecha FROM AntFecha)"
                BaseExecute lsql
                
                
                lsql = "DELETE FROM refacturado_deuda WHERE id_suscriptor=" & Reg("id") & " " _
                & " AND id_fecha IN (SELECT id_fecha FROM AntFecha)"
                BaseExecute lsql
                
                
                
                
                lsql = "INSERT INTO credito (id_suscriptor,id_fecha,valor,acreditado) " _
                & " SELECT id_suscriptor," & gFecha + 1 & ",acreditado,0 FROM credito " _
                & " WHERE acreditado>0 AND id_suscriptor=" & Reg("id") & " " _
                & " AND id_fecha=" & gFecha
                BaseExecute lsql
                
                Reg.MoveNext
          Wend
          Reg.Close
          Set Reg = Nothing
       End If
       
       'Suscriptores que no realizaron el pago
      
      
      
       
       
      
       lsql = "SELECT  facturacion.id AS idFactura,suscriptor.id AS idSuscriptor,uso.InteresMora  " _
       & " FROM uso INNER JOIN (facturacion INNER JOIN (suscriptor " _
       & " INNER JOIN detalle_facturacion ON suscriptor.id = detalle_facturacion.id_suscriptor) " _
       & " ON facturacion.id = detalle_facturacion.id_factura) ON uso.id = suscriptor.id_uso WHERE  " _
       & " facturacion.id_fecha=" & idFecha & " AND facturacion.pagada=false ORDER BY suscriptor.id ASC"

       
       Set Reg = New ADODB.Recordset
       ExecuteSql Reg, lsql
       
       
      
       Dim idFactura As Long
       
       If gError = 0 Then
          While Not Reg.EOF
                fValor = 0
                Set Reg1 = New ADODB.Recordset
                lsql = "SELECT valor FROM abono WHERE " _
                & " id_factura=" & Reg("idFactura") & " " _
                & " AND id_fecha=" & gFecha
                Set Reg1 = New ADODB.Recordset
                ExecuteSql Reg1, lsql
                If gError = 0 Then
                   If Not Reg1.BOF Then
                      fValor = Reg1("valor")
                     
                   End If
                   Reg1.Close
                End If
                lsql = "SELECT valor FROM credito " _
                & " WHERE id_suscriptor=" & Reg("idSuscriptor") & " " _
                & " AND id_fecha=" & gFecha
                
                ExecuteSql Reg1, lsql
                If gError = 0 Then
                   If Not Reg1.BOF Then
                      fValor = fValor + Reg1("valor")
                   End If
                   Reg1.Close
                End If
                Set Reg1 = Nothing
                
                
                Cuadrar_Conceptos fValor, Reg("idFactura"), Reg("idSuscriptor"), Reg("InteresMora")
                   
                
                

                lsql = "UPDATE suscriptor set atraso=atraso+1 " _
                & " WHERE id=" & Reg("idSuscriptor")
                BaseExecute lsql
                
                
                lsql = "INSERT INTO credito (id_suscriptor,id_fecha,valor,acreditado) " _
                & " SELECT id_suscriptor," & gFecha + 1 & ",acreditado,0 FROM credito " _
                & " WHERE acreditado>0 AND id_suscriptor=" & Reg("idSuscriptor") & " " _
                & " AND id_fecha=" & gFecha
                BaseExecute lsql
                
                
                
                
                
           Reg.MoveNext
          Wend
          Reg.Close
         
       End If
        Set Reg = Nothing       '*** Actualizar Deudas ****'
              
       '*****Mover Lecturas*******
       
      
                       
        
        
        
        

       
       
       '********************Organizar Códigos*****************'
       
       
       
       SQL = "SELECT * FROM suscriptor ORDER BY sistema ASC"
       Set Reg = New ADODB.Recordset
       ExecuteSql Reg, SQL
       If gError = 0 Then
          iCodigo = 1
          While Not Reg.EOF
                
                BaseExecute "UPDATE suscriptor SET " _
                & " lectura1=lectura2,lectura2=lectura3," _
                & " lectura3=lectura4,lectura4=lectura5," _
                & " lectura5=lectura6,lectura6=lecturaanterior," _
                & " lecturaanterior=lecturaactual " _
                & " WHERE id=" & Reg("id")

                BaseExecute "UPDATE suscriptor SET " _
                & " consumo1=consumo2,consumo2=consumo3," _
                & " consumo3=consumo4,consumo4=consumo5," _
                & " consumo5=consumo6,consumo6=consumoactual," _
                & " consumoactual=0 WHERE id=" & Reg("id")
                
                
                Reg.MoveNext
          Wend
          Reg.Close
         
       End If
       

       SQL = "SELECT * FROM fecha ORDER BY id DESC"
       Set Reg = New ADODB.Recordset
       ExecuteSql Reg, SQL
       If gError = 0 Then
          If Not Reg.BOF Then
             SQL = "INSERT INTO fecha (id,fecha) VALUES " _
             & " (" & gFecha + 1 & ",'" & DateAdd("m", 1, Reg("fecha")) & "')"
             BaseExecute SQL
             gFecha = gFecha + 1
             
          End If
          Reg.Close
          Set Reg = Nothing
          
       End If
       
       
       
       Set Reg = New ADODB.Recordset
       SQL = "SELECT Max(fecha),Max(id) FROM fecha"
       ExecuteSql Reg, SQL
       gNomFecha = Reg(0)
       If gError = 0 Then
          If Not Reg.BOF Then
             mdiPrincipal.stBarra.Panels(1).Text = UCase(Format(Reg(0), "mmmm yyyy"))
             gFecha = Reg(1)
             Reg.Close
          End If
       End If
       Set Reg = Nothing
       
       Set Reg = New ADODB.Recordset
       Dim AnteFecha As String
       SQL = "SELECT fecha FROM Fecha INNER JOIN Antfecha ON " _
       & " AntFecha.id_fecha=fecha.id"
       ExecuteSql Reg, SQL
       gNomFecha = Reg(0)
       If gError = 0 Then
          If Not Reg.BOF Then
             AnteFecha = Format(Reg(0), "mmmmyyyy")
             
          End If
          Reg.Close
       End If
       Set Reg = Nothing
       
    End If
    If MsgBox("Desea Incrementar Tarifas?", vbDefaultButton2 + vbYesNo) = vbYes Then
       SQL = "UPDATE uso set ValorFijoAcueducto=cdbl(format(ValorFijoAcueducto*((IncrementoFijoAcueducto/100)+1),'#.00')), " _
       & " ValorBasicoAcueducto=cdbl(format(ValorBasicoAcueducto*((IncrementoConsumoAcueducto/100)+1),'#.00'))," _
       & " ValorComplementarioAcueducto=cdbl(format(ValorComplementarioAcueducto*((IncrementoConsumoAcueducto/100)+1),'#.00'))," _
       & " ValorSuntuarioAcueducto=cdbl(format(ValorSuntuarioAcueducto*((IncrementoConsumoAcueducto/100)+1),'#.00'))," _
       & " ValorFijoAlcantarillado=cdbl(format(ValorFijoAlcantarillado*((IncrementoFijoAlcantarillado/100)+1),'#.00')), " _
       & " ValorBasicoAlcantarillado=cdbl(format(ValorBasicoAlcantarillado*((IncrementoConsumoAlcantarillado/100)+1),'#.00'))," _
       & " ValorComplementarioAlcantarillado=cdbl(format(ValorComplementarioAlcantarillado*((IncrementoConsumoAlcantarillado/100)+1),'#.00'))," _
       & " ValorSuntuarioAlcantarillado=cdbl(format(ValorSuntuarioAlcantarillado*((IncrementoConsumoAlcantarillado/100)+1),'#.00'))," _
       & " ValorBarridoAseo=cdbl(format(ValorBarridoAseo*((IncrementoAseo/100)+1),'#.00')),ValorRecoleccionAseo=cdbl(format(ValorRecoleccionAseo*((IncrementoAseo/100)+1),'#.00')), " _
       & " ValorDisposicionAseo=cdbl(format(ValorDisposicionAseo*((IncrementoAseo/100)+1),'#.00')),ValorRecaudoAseo=cdbl(format(ValorRecaudoAseo*((IncrementoAseo/100)+1),'#.00'))"
              
       
       BaseExecute SQL
    End If
    
  'End If
  Dim strVersion As String
  strVersion = Base.Version
  Base.Close
  Set Base = Nothing
 If Dir(App.Path & "\temp2.mdb") <> "" Then
 
     Kill App.Path & "\temp2.mdb"
  End If
  DBEngine.CompactDatabase App.Path & "\servicios.mdb", App.Path & "\temp2.mdb"
  If Dir(App.Path & "\Copia\" & AnteFecha & ".mdb") <> "" Then
    Kill App.Path & "\Copia\" & AnteFecha & ".mdb"
  End If
  CompactDatabase App.Path & "\servicios.mdb", App.Path & "\Copia\" & AnteFecha & ".mdb"
  If Dir(App.Path & "\servicios.mdb") <> "" Then
    Kill App.Path & "\servicios.mdb"
  End If
  Name App.Path & "\temp2.mdb" As App.Path & "\servicios.mdb"
  
    ConectarBase
      Filtro
       
   Screen.MousePointer = vbDefault
End Sub
Private Sub Abonar()

    Load frm_Abono
    frm_Abono.Show 0, Me
End Sub

Private Sub ImprimirRecibos()

'Dim i As Integer
'
' With MfgLiquidacion
'    If .SelBookmarks.count > 0 Then
'      For i = 0 To .SelBookmarks.count - 1
'          gReg.Bookmark = .SelBookmarks(i)
'          ReDim Preserve iFactura(i)
'          iFactura(i) = gReg(17)
'      Next
'    Else
'      i = 0
'      While Not gReg.EOF
'          ReDim Preserve iFactura(i)
'          iFactura(i) = gReg(17)
'          i = i + 1
'          gReg.MoveNext
'      Wend
'      gReg.MoveFirst
'    End If
' End With
 
   Load frm_ImprimirRecibos
   frm_ImprimirRecibos.Show 1
    
End Sub

Private Sub TbrBarHerramientas_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim forma As frm_ConsultaLiquidacion
Dim iForm As frm_ModificarLecturas
Dim lsql As String
    Select Case Button.key
    
          Case "BtnSalir"
                Unload Me
                
          Case "BtnLiquidar"
               Liquidacion
               
          Case "BtnCierre"
                
                Cierre
          Case "BtnAbono"
                Abonar
          Case "BtnPagos"
                Load frm_Pagos
                frm_Pagos.Show 0, Me
          Case "BtnVisualizar"
                
            With MfgLiquidacion
                 
                If .SelBookmarks.count > 0 Then
                   Set forma = New frm_ConsultaLiquidacion
                   gReg.Bookmark = .SelBookmarks(0)
                   forma.id_suscriptor = gReg(18)
                   forma.Show 0, mdiPrincipal
                End If
            End With
                
          Case "BtnLecturas"
             Set iForm = New frm_ModificarLecturas
             With MfgLiquidacion
                If .SelBookmarks.count > 0 Then
                 gReg.Bookmark = .SelBookmarks(0)
                 iForm.iSistema = gReg(0)
                 iForm.Caption = "Código: " & gReg(2)
                 iForm.Show 1
                Else
                  MsgBox "Sleccione una fila"
                End If
             End With
           Case "BtnImprimir"
               Dim Report As frm_Reporte
               Set Report = New frm_Reporte
               
               Report.UpdateReport "", "", "Rptliquidacion.rpt", True, "", False
               Report.Show
            Case "BtnRecibo"
                 ImprimirRecibos
                 
                 
    End Select
 
 
End Sub
