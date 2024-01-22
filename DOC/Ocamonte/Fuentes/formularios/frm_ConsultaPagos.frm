VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frm_ConsultaPagos 
   Caption         =   "Consulta de Pagos"
   ClientHeight    =   7680
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9255
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   7680
   ScaleWidth      =   9255
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame FraTabla 
      Height          =   6870
      Left            =   60
      TabIndex        =   1
      Top             =   690
      Width           =   9120
      Begin VB.ComboBox cmbFecha 
         Height          =   315
         Left            =   2610
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   450
         Width           =   2445
      End
      Begin VB.Frame Frame1 
         Caption         =   "Código Suscriptor"
         Height          =   1245
         Left            =   180
         TabIndex        =   3
         Top             =   180
         Width           =   2205
         Begin VB.ComboBox cmbDesdeCodigo 
            Height          =   315
            Left            =   660
            Style           =   2  'Dropdown List
            TabIndex        =   5
            Top             =   390
            Width           =   1425
         End
         Begin VB.ComboBox cmbHastaCodigo 
            Height          =   315
            Left            =   660
            Style           =   2  'Dropdown List
            TabIndex        =   4
            Top             =   750
            Width           =   1425
         End
         Begin VB.Label Label1 
            Caption         =   "Desde"
            Height          =   255
            Left            =   90
            TabIndex        =   7
            Top             =   450
            Width           =   525
         End
         Begin VB.Label Label2 
            Caption         =   "Hasta"
            Height          =   255
            Left            =   90
            TabIndex        =   6
            Top             =   810
            Width           =   525
         End
      End
      Begin MSDataGridLib.DataGrid MfgLiquidacion 
         Height          =   4935
         Left            =   210
         TabIndex        =   2
         Top             =   1530
         Width           =   8625
         _ExtentX        =   15214
         _ExtentY        =   8705
         _Version        =   393216
         AllowUpdate     =   -1  'True
         BorderStyle     =   0
         HeadLines       =   1
         RowHeight       =   15
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
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
               Format          =   ""
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
            MarqueeStyle    =   1
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Label Label3 
         Caption         =   "Fecha"
         Height          =   255
         Left            =   2640
         TabIndex        =   8
         Top             =   240
         Width           =   585
      End
   End
   Begin MSComctlLib.Toolbar TbrBarHerramientas 
      Align           =   1  'Align Top
      Height          =   630
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   1111
      ButtonWidth     =   1323
      ButtonHeight    =   953
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   3
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Eliminar"
            Key             =   "BtnEliminar"
            Description     =   "Factura los manejos seleccionados"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Imprimir"
            Key             =   "BtnImprimir"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
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
               Picture         =   "frm_ConsultaPagos.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":1D0A
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":25E4
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":2EBE
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":86B0
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":B1BA
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":10DDC
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":13E5E
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultaPagos.frx":15B38
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_ConsultaPagos"
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
Dim ValorBasico As Currency
Dim ConsumoBasico As Long
Dim ConsumoComplementario As Long
Dim ConsumoSuntuario As Long
Dim ValorSuntuario As Currency
Dim ValorComplementario As Currency
Dim Consumo As Long
Dim gReg As ADODB.Recordset
Dim bEntrar As Boolean
Dim iOrden(13) As Boolean
Dim lOrden As String
Dim iFecha As Long


Private Sub Filtro()
Dim R1 As ADODB.Recordset
Dim R2 As ADODB.Recordset
Dim Datos()
Dim i As Integer

    
    
'    Screen.MousePointer = vbHourglass
'
'   With MfgLiquidacion
'
'    .Rows = 1
'    SQL = "SELECT * FROM suscriptor WHERE bloqueo=false " & strCodigo & " ORDER BY id"
'    Set R1 = New ADODB.Recordset
'    Set R2 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'       While Not R1.EOF
            SQL = "SELECT suscriptor.Sistema AS Sistema,suscriptor.codigo AS Código, " _
            & " suscriptor.nombre As Nombre, facturacion.total AS Total,facturacion.id FROM suscriptor,detalle_facturacion,facturacion " _
            & " WHERE suscriptor.id=detalle_facturacion.id_suscriptor AND detalle_facturacion.id_factura=facturacion.id " _
            & " AND facturacion.pagada=true AND facturacion.id_fecha=" & iFecha & strCodigo & " ORDER BY suscriptor.sistema ASC"
            
            If bEntrar = True Then
               bEntrar = False
            Else

               gReg.Close
            End If
            
            Actualice_Datos SQL
            
            
            
            
            
'            ExecuteSql R2, SQL
'            If gError = 0 Then
'                .Rows = .Rows + 1
'                .TextMatrix(.Rows - 1, 0) = R1("sistema")
'               .TextMatrix(.Rows - 1, 1) = R1("codigo")
'               .TextMatrix(.Rows - 1, 12) = R1("id")
'               If Not R2.BOF Then
'                  .TextMatrix(.Rows - 1, 13) = R2("id")
'                  For i = 1 To R2.Fields.count - 2
'                      .TextMatrix(.Rows - 1, i + 1) = R2(i) & ""
'                  Next
'               End If
'               R2.Close
'            End If
'
'            R1.MoveNext
'       Wend
'       R1.Close
'    End If
'    Set R1 = Nothing
'    Set R2 = Nothing
'
'
'  End With
'      Screen.MousePointer = vbDefault
End Sub
Private Sub Suscriptores()
Dim Contador As Long
Dim Reg As ADODB.Recordset
    
    SQL = "SELECT suscriptor.Sistema AS Nombre,suscriptor.id AS id " _
    & " FROM suscriptor,detalle_facturacion,facturacion " _
    & " WHERE suscriptor.id=detalle_facturacion.id_suscriptor AND detalle_facturacion.id_factura=facturacion.id " _
    & " AND facturacion.pagada=true AND facturacion.id_fecha=" & gFecha & " " _
    & " ORDER BY suscriptor.sistema ASC"
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
       Set Reg = Nothing
    End If
   'cmbDesdeCodigo.ListIndex = 0
End Sub

Private Sub cmbDesdeCodigo_Change()
    cmbDesdeCodigo_Click
End Sub

Private Sub cmbDesdeCodigo_Click()
Dim Contador As Long
Dim Reg As ADODB.Recordset
     Screen.MousePointer = vbHourglass
    strCodigo = "AND suscriptor.id>0"
    If cmbDesdeCodigo.ListIndex > 0 Then
       strCodigo = " AND suscriptor.id >= " & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex)
    End If
    
    cmbHastaCodigo.Enabled = True
    If cmbDesdeCodigo.ListIndex = 0 Then
       cmbHastaCodigo.Enabled = False
       cmbHastaCodigo.Clear
       Filtro
       Exit Sub
    End If
    
    If cmbDesdeCodigo.ListIndex > 0 Then
         
        SQL = "SELECT sistema AS nombre, id " _
        & " FROM suscriptor WHERE bloqueo=0 AND " _
        & " id >= " & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex) & " " _
        & " ORDER BY sistema ASC"
        
        SQL = "SELECT suscriptor.Sistema AS Nombre,suscriptor.id AS id " _
        & " FROM suscriptor,detalle_facturacion,facturacion " _
        & " WHERE suscriptor.id=detalle_facturacion.id_suscriptor AND detalle_facturacion.id_factura=facturacion.id " _
        & " AND suscriptor.id >= " & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex) & " " _
        & " AND facturacion.pagada=true AND facturacion.id_fecha=" & iFecha & " " _
        & " ORDER BY suscriptor.sistema ASC"
   
        
        
        LlenarCombo cmbHastaCodigo, SQL
        
        If cmbHastaCodigo.ListCount > 0 Then cmbHastaCodigo.ListIndex = cmbHastaCodigo.ListCount - 1
        
  End If
   Screen.MousePointer = vbDefault
End Sub




Private Sub cmbFecha_Change()
    cmbFecha_Click
End Sub

Private Sub cmbFecha_Click()
     UbicarCombo cmbFecha, cmbFecha.ItemData(cmbFecha.ListIndex)
    iFecha = cmbFecha.ItemData(cmbFecha.ListIndex)
    Filtro
End Sub

Private Sub cmbHastaCodigo_Change()
    cmbHastaCodigo_Click
End Sub

Private Sub cmbHastaCodigo_Click()
    strCodigo = " AND suscriptor.id>=" & cmbDesdeCodigo.ItemData(cmbDesdeCodigo.ListIndex)
    If cmbHastaCodigo.ListIndex <> -1 Then
       strCodigo = strCodigo & " AND suscriptor.id<=" & cmbHastaCodigo.ItemData(cmbHastaCodigo.ListIndex)
    End If
    Filtro
    
End Sub
Private Sub CargueFechas()

Dim SQL As String
    
    SQL = "SELECT format(fecha,'mmmm yyyy') AS Nombre, id as ID FROM fecha ORDER BY id DESC"
     LlenarCombo cmbFecha, SQL
   
    
End Sub
Private Sub Form_Load()
Dim i As Integer
    For i = 0 To 13
        iOrden(i) = False
    Next i
    Set gReg = New ADODB.Recordset
    bEntrar = True
    'PonerEncabezados
'    SQL = "SELECT max(fecha) FROM fecha "
'    Set Reg = New ADODB.Recordset
'    ExecuteSql Reg, SQL
'    If gError = 0 Then
'       If Not Reg.BOF Then
'          fecha = Reg(0)
'       End If
'       Reg.Close
'       Set Reg = Nothing
'    End If
    Suscriptores
    CargueFechas
    If cmbFecha.ListCount > 0 Then cmbFecha.ListIndex = 0
       
   
    'Filtro
End Sub
Private Sub Actualice_Datos(lsql As String)
Dim Ancho As Long
     
    Llene_TablaGrid MfgLiquidacion, lsql, gReg, "4"
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
         .Columns(0).Width = Ancho * 0.24
         .Columns(1).Width = Ancho * 0.24
         .Columns(2).Width = Ancho * 0.24
         .Columns(3).Width = Ancho * 0.24
         .Columns(4).Width = Ancho * 0
         
         If .ApproxCount > .VisibleRows Then
            .Columns(1).Width = Ancho * 0.21
         End If
    End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
    gReg.Close
    Set gReg = Nothing
End Sub

Private Sub MfgLiquidacion_HeadClick(ByVal ColIndex As Integer)
Dim lsql As String


          
    Select Case ColIndex
           Case 0:
               If iOrden(0) Then
                  lOrden = " Sistema DESC "
               Else
                  lOrden = " Sistema ASC "
               End If
            iOrden(0) = Not iOrden(0)
            
            Case 1:
               If iOrden(1) Then
                  lOrden = " Código DESC "
               Else
                  lOrden = " Código ASC "
               End If
             iOrden(1) = Not iOrden(1)
            Case 2
               If iOrden(2) Then
                  lOrden = " Nombre DESC "
               Else
                  lOrden = " Nombre ASC "
               End If
             iOrden(2) = Not iOrden(2)
             
             Case 3
               If iOrden(3) Then
                  lOrden = " Total DESC "
               Else
                  lOrden = " Total ASC "
               End If
             iOrden(3) = Not iOrden(3)
             
      End Select
      
      
'       SQL = "SELECT suscriptor.Sistema AS Sistema,suscriptor.codigo AS Código, " _
'       & " suscriptor.nombre As Nombre, facturacion.total AS Total,facturacion.id FROM suscriptor,detalle_facturacion,facturacion " _
'       & " WHERE suscriptor.id=detalle_facturacion.id_suscriptor AND detalle_facturacion.id_factura=facturacion.id " _
'       & " AND facturacion.pagada=true AND facturacion.id_fecha=" & gFecha & strCodigo & " ORDER BY suscriptor.sistema ASC"
      
      'lsql = GenereSQL & " ORDER BY " & lOrden
      gReg.Sort = lOrden
      
            
End Sub

Private Sub MfgLiquidacion_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
Dim Row As Integer
Dim Col As Integer
Dim i As Integer

 Col = MfgLiquidacion.ColContaining(x)
 Row = MfgLiquidacion.RowContaining(y)
   
   With MfgLiquidacion
        
        
        
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

Private Sub EliminarPagos()
Dim SQL As String
Dim R1 As ADODB.Recordset
Dim i As Integer
    
    
    With MfgLiquidacion
        If .SelBookmarks.count > 0 Then
           If MsgBox("Desea Eliminar los Pagos Seleccionados ?", vbDefaultButton2 + vbYesNo) = vbYes Then
              For i = 0 To .SelBookmarks.count - 1
                  gReg.Bookmark = .SelBookmarks(i)
                  SQL = "UPDATE facturacion set pagada=false,fecha_pagada=Null WHERE " _
                  & "  id=" & gReg(4)
                  BaseExecute SQL
              Next
           End If
        Else
           MsgBox "Seleccione una Fila", vbCritical
        End If
      Filtro
    End With
    
    
End Sub

Private Sub TbrBarHerramientas_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim forma As frm_ConsultaLiquidacion
Dim iForm As frm_ModificarLecturas
Dim lsql As String
    Select Case Button.key
    
          Case "BtnSalir"
                Unload Me
                
          Case "BtnEliminar"
                
                EliminarPagos
                
               ' lSql = "UPDATE facturacion set pagada=false, fecha_pagada='' WHERE " _
               ' & " id=" &
               
          Case "BtnImprimir"
                
          
                
                 
                 
    End Select
 
End Sub
