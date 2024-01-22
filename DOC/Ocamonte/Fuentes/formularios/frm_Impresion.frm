VERSION 5.00
Object = "{C0A63B80-4B21-11D3-BD95-D426EF2C7949}#1.0#0"; "vsflex7l.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_Impresion 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Configurar Impresión"
   ClientHeight    =   5670
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6945
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5670
   ScaleWidth      =   6945
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Height          =   615
      Left            =   180
      TabIndex        =   7
      Top             =   5010
      Width           =   6675
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
         Height          =   375
         Left            =   5310
         TabIndex        =   9
         Top             =   150
         Width           =   1275
      End
      Begin VB.CommandButton cmdGuardar 
         Caption         =   "Guardar"
         Height          =   375
         Left            =   150
         TabIndex        =   8
         Top             =   150
         Width           =   1275
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1755
      Left            =   180
      TabIndex        =   1
      Top             =   3210
      Width           =   6675
      Begin VB.Frame Frame7 
         Caption         =   "Mes Facturado"
         Height          =   705
         Left            =   3810
         TabIndex        =   15
         Top             =   960
         Width           =   2685
         Begin VB.ComboBox cmbFecha 
            Height          =   315
            Left            =   90
            Style           =   2  'Dropdown List
            TabIndex        =   16
            Top             =   240
            Width           =   2505
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "Tipo de Impresión"
         Height          =   765
         Left            =   3810
         TabIndex        =   12
         Top             =   150
         Width           =   2685
         Begin VB.OptionButton optManual 
            Caption         =   "Manual"
            Height          =   315
            Left            =   1350
            TabIndex        =   14
            Top             =   300
            Width           =   855
         End
         Begin VB.OptionButton optContinua 
            Caption         =   "Contínua"
            Height          =   255
            Left            =   120
            TabIndex        =   13
            Top             =   330
            Value           =   -1  'True
            Width           =   1035
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "Fecha Expedición"
         Height          =   705
         Left            =   1620
         TabIndex        =   10
         Top             =   960
         Width           =   1635
         Begin MSComCtl2.DTPicker dtpExpedicion 
            Height          =   315
            Left            =   180
            TabIndex        =   11
            Top             =   270
            Width           =   1245
            _ExtentX        =   2196
            _ExtentY        =   556
            _Version        =   393216
            Format          =   57016321
            CurrentDate     =   39007
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Periodo de Consumo"
         Height          =   765
         Left            =   90
         TabIndex        =   4
         Top             =   150
         Width           =   3165
         Begin MSComCtl2.DTPicker dtpFecha1 
            Height          =   315
            Left            =   150
            TabIndex        =   5
            Top             =   330
            Width           =   1245
            _ExtentX        =   2196
            _ExtentY        =   556
            _Version        =   393216
            Format          =   57016321
            CurrentDate     =   39007
         End
         Begin MSComCtl2.DTPicker dtpFecha2 
            Height          =   315
            Left            =   1710
            TabIndex        =   6
            Top             =   330
            Width           =   1245
            _ExtentX        =   2196
            _ExtentY        =   556
            _Version        =   393216
            Format          =   57016321
            CurrentDate     =   39007
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Límite de Pago"
         Height          =   705
         Left            =   90
         TabIndex        =   2
         Top             =   960
         Width           =   1455
         Begin MSComCtl2.DTPicker dtpPago 
            Height          =   315
            Left            =   120
            TabIndex        =   3
            Top             =   270
            Width           =   1245
            _ExtentX        =   2196
            _ExtentY        =   556
            _Version        =   393216
            Format          =   57016321
            CurrentDate     =   39007
         End
      End
   End
   Begin VSFlex7LCtl.VSFlexGrid vfgImpresion 
      Height          =   3045
      Left            =   180
      TabIndex        =   0
      Top             =   90
      Width           =   6705
      _cx             =   11827
      _cy             =   5371
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   1
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   5
      FixedRows       =   1
      FixedCols       =   0
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   $"frm_Impresion.frx":0000
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
   End
End
Attribute VB_Name = "frm_Impresion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGuardar_Click()
Dim i As Long
Dim SQL As String

    SaveSetting App.Title, frm_ImprimirRecibos.Name, "Fecha1", dtpFecha1.Value
    SaveSetting App.Title, frm_ImprimirRecibos.Name, "Fecha2", dtpFecha2.Value
    SaveSetting App.Title, frm_ImprimirRecibos.Name, "FechaPago", dtpPago.Value
    SaveSetting App.Title, frm_ImprimirRecibos.Name, "FechaExpedicion", dtpExpedicion.Value
    SaveSetting App.Title, frm_ImprimirRecibos.Name, optContinua.Name, optContinua.Value
    SaveSetting App.Title, frm_ImprimirRecibos.Name, optManual.Name, optManual.Value
    SaveSetting App.Title, frm_ImprimirRecibos.Name, "MesFacturado", cmbFecha.Text
    With vfgImpresion
         For i = 1 To .Rows - 1
             If .TextMatrix(i, 2) <> "" And .TextMatrix(i, 3) <> "" Then
                Select Case .TextMatrix(i, 4)
                Case "Texto"
                      SQL = "UPDATE impresion set x=" & .TextMatrix(i, 2) & "," _
                      & " y=" & .TextMatrix(i, 3) & ",tipo= 1  WHERE id=" & .TextMatrix(i, 0)
                      BaseExecute SQL
                Case "Numérico"
                
                     SQL = "UPDATE impresion set x=" & .TextMatrix(i, 2) & "," _
                     & " y=" & .TextMatrix(i, 3) & ",tipo= 2  WHERE id=" & .TextMatrix(i, 0)
                     BaseExecute SQL
                Case "Fecha"
                
                     SQL = "UPDATE impresion set x=" & .TextMatrix(i, 2) & "," _
                     & " y=" & .TextMatrix(i, 3) & ",tipo= 3  WHERE id=" & .TextMatrix(i, 0)
                     BaseExecute SQL
               End Select
             End If
         Next
    End With
    LlenarCampos
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub LlenarCampos()
Dim SQL As String
Dim r As ADODB.Recordset


    SQL = "SELECT * FROM impresion"
    Set r = New ADODB.Recordset
    ExecuteSql r, SQL
    If gError = 0 Then
       With vfgImpresion
            .Clear
            .Rows = 2
            
            .TextMatrix(0, 1) = "CAMPOS"
            .TextMatrix(0, 2) = "X"
            .TextMatrix(0, 3) = "Y"
            .TextMatrix(0, 4) = "TIPO"
            While Not r.EOF
                  .TextMatrix(.Rows - 1, 0) = r("id")
                  .TextMatrix(.Rows - 1, 1) = r("nombre")
                  .TextMatrix(.Rows - 1, 2) = r("X")
                  .TextMatrix(.Rows - 1, 3) = r("Y")
                  Select Case r("tipo")
                        Case 1
                              .TextMatrix(.Rows - 1, 4) = "Texto"
                        Case 2
                              .TextMatrix(.Rows - 1, 4) = "Numérico"
                        Case 3
                              .TextMatrix(.Rows - 1, 4) = "Fecha"
                  End Select
                  
                  .Rows = .Rows + 1
                  r.MoveNext
            Wend
            r.Close
       End With
    End If
    Set r = Nothing
    
End Sub

Private Sub LlenarTipo()
    With vfgImpresion
            .Editable = flexEDKbdMouse
            .ColDataType(4) = flexDTString
            .ColComboList(4) = "#1;Texto|#2;Numérico|#3;Fecha"
    End With
End Sub
Private Sub LlenarMesFacturado()
Dim SQL As String
    
    SQL = "SELECT format(fecha,'mmmm yyyy') AS Nombre,id FROM fecha " _
    & " WHERE id>0 ORDER BY fecha DESC"
    LlenarCombo cmbFecha, SQL
    If cmbFecha.ListCount > 0 Then cmbFecha.ListIndex = 0
End Sub
Private Sub Form_Load()
Dim R1 As ADODB.Recordset
Dim SQL As String


    dtpFecha1.Value = GetSetting(App.Title, frm_ImprimirRecibos.Name, "Fecha1", "01/01/2008")
    dtpFecha2.Value = GetSetting(App.Title, frm_ImprimirRecibos.Name, "Fecha2", "01/01/2008")
    dtpPago.Value = GetSetting(App.Title, frm_ImprimirRecibos.Name, "FechaPago", "01/01/2008")
    dtpExpedicion.Value = GetSetting(App.Title, frm_ImprimirRecibos.Name, "FechaExpedicion", "01/01/2008")
    optContinua.Value = GetSetting(App.Title, frm_ImprimirRecibos.Name, optContinua.Name, vbChecked)
    optManual.Value = GetSetting(App.Title, frm_ImprimirRecibos.Name, optManual.Name, vbChecked)
    
    
    LlenarCampos
    LlenarTipo
    LlenarMesFacturado
    
'    SQL = "SELECT * FROM parametro"
'    Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'       If Not R1.BOF Then
'          dtpFecha1.Value = R1("fecha1")
'          dtpFecha2.Value = R1("fecha2")
'          dtpPago.Value = R1("fecha_pago")
'       End If
'       R1.Close
'    End If
'    Set R1 = Nothing
'    If GetSetting(App.Title, frm_ImprimirRecibos.Name, optContinua.Name, vbChecked) = False Then
'       Option2.Value = True
'       optContinua.Value = False
'    Else
'      optContinua.Value = True
'       Option2.Value = False
'    End If
   
End Sub

Private Sub vfgImpresion_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    
    With vfgImpresion
          .Editable = flexEDNone
          If .MouseCol >= 2 Then
             .Editable = flexEDKbdMouse
          End If
    End With
End Sub
