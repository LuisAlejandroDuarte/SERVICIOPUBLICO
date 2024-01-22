VERSION 5.00
Object = "{C0A63B80-4B21-11D3-BD95-D426EF2C7949}#1.0#0"; "vsflex7l.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_lecturaPrecritica 
   Caption         =   "Lectura Precríticas"
   ClientHeight    =   5580
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4620
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   5580
   ScaleWidth      =   4620
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame fraLectura 
      Height          =   5415
      Left            =   83
      TabIndex        =   0
      Top             =   90
      Width           =   4455
      Begin VSFlex7LCtl.VSFlexGrid MfgLectura 
         Height          =   3075
         Left            =   210
         TabIndex        =   7
         Top             =   1680
         Width           =   4095
         _cx             =   7223
         _cy             =   5424
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
         Cols            =   3
         FixedRows       =   1
         FixedCols       =   0
         RowHeightMin    =   330
         RowHeightMax    =   0
         ColWidthMin     =   0
         ColWidthMax     =   0
         ExtendLastCol   =   0   'False
         FormatString    =   $"frm_lecturaPrecritica.frx":0000
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
      Begin VB.Frame fraControl 
         Height          =   555
         Left            =   90
         TabIndex        =   6
         Top             =   4710
         Width           =   4125
         Begin VB.CommandButton cmdSalir 
            Caption         =   "&Salir"
            Height          =   315
            Left            =   1500
            TabIndex        =   8
            Top             =   180
            Width           =   1125
         End
      End
      Begin VB.Frame fraFecha 
         Height          =   1455
         Left            =   150
         TabIndex        =   1
         Top             =   150
         Width           =   4155
         Begin VB.ComboBox cmbLector 
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
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   5
            Top             =   930
            Width           =   3825
         End
         Begin MSComCtl2.DTPicker dtpFecha 
            Height          =   330
            Left            =   120
            TabIndex        =   2
            Top             =   360
            Width           =   3855
            _ExtentX        =   6800
            _ExtentY        =   582
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   57147392
            CurrentDate     =   38474
         End
         Begin VB.Label Label2 
            Caption         =   "Lector"
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
            TabIndex        =   4
            Top             =   720
            Width           =   615
         End
         Begin VB.Label Label1 
            Caption         =   "Fecha"
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
            TabIndex        =   3
            Top             =   150
            Width           =   1155
         End
      End
   End
End
Attribute VB_Name = "frm_lecturaPrecritica"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SQL As String

Private Sub Cargue_Nolectura()
Dim RNoLectura As ADODB.Recordset
Dim i As String
    SQL = "SELECT * FROM nolectura"
    Set RNoLectura = New ADODB.Recordset
    ExecuteSql RNoLectura, SQL
    If gError = 0 And Not RNoLectura.BOF Then
       With MfgLectura
            .Editable = flexEDKbdMouse
            .ColDataType(2) = flexDTString
            .ColComboList(2) = "#" & 0 & ";" & " "
            While Not RNoLectura.EOF
                 .ColComboList(2) = "#" & RNoLectura("id") & ";" & RNoLectura("nombre") & "|" & .ColComboList(2)
                
                 RNoLectura.MoveNext
            Wend
             RNoLectura.Close
            
       End With
    End If
    Set RNoLectura = Nothing
End Sub
Private Sub IniciarGrid()
    With MfgLectura
         .Rows = 1
         .Cols = 3
    End With
End Sub

Private Sub CmbEditar_Change()

End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub CargueLector()
    SQL = "SELECT * FROM lector"
    LlenarCombo cmbLector, SQL
    If cmbLector.ListCount > 0 Then cmbLector.ListIndex = 0
End Sub
Private Sub MostrarLecturas()
Dim RLectura As ADODB.Recordset
Dim i As Integer
    SQL = "SELECT suscriptor.id,suscriptor.sistema, suscriptor.lecturaTemp, " _
    & " nolectura_suscriptor.id_nolectura FROM suscriptor " _
    & " LEFT JOIN nolectura_suscriptor " _
    & " ON suscriptor.id = nolectura_suscriptor.id_suscriptor" _
    & " ORDER BY sistema ASC "
        Set RLectura = New ADODB.Recordset
        ExecuteSql RLectura, SQL
        If gError = 0 Then
           IniciarGrid
           While Not RLectura.EOF
                 With MfgLectura
                      .Rows = .Rows + 1
                      .TextMatrix(.Rows - 1, 0) = RLectura("sistema")
                      .TextMatrix(.Rows - 1, 1) = RLectura("lecturaTemp")
                      .RowData(.Rows - 1) = RLectura("id")
                     .Cell(flexcpText, .Rows - 1, 2) = RLectura("id_nolectura")
                 End With
                 RLectura.MoveNext
           Wend
           RLectura.Close
           Set RLectura = Nothing
        End If
        
End Sub

Private Sub Form_Load()
    CargueLector
    Cargue_Nolectura
    MostrarLecturas
    dtpFecha.Value = Date
End Sub

Private Sub SalvarLectura(iLectura As Long, iSistema As Long, idLectura As String)
Dim Reg As ADODB.Recordset
Dim iLongitud As Integer
Dim iPotencial As Currency
Dim iResto As Integer
Dim iConsumo As Long
Dim lsql As String
Dim idSuscriptor As Long
 
 Set Reg = New ADODB.Recordset
 SQL = "SELECT * FROM suscriptor " _
 & " WHERE sistema=" & iSistema
 ExecuteSql Reg, SQL
 If gError = 0 Then
    If Not Reg.BOF Then
       idSuscriptor = Reg("id")
       If iLectura < 100 And Len(Reg("lecturaanterior")) > 2 Then
          iLongitud = Len(Reg("lecturaanterior"))
          iPotencial = Exp(iLongitud * Log(10))
          iResto = iPotencial - Reg("lecturaanterior")
          iConsumo = iLectura + iResto
       Else
         If Reg("lecturaanterior") <= iLectura Then
            iConsumo = iLectura - Reg("lecturaanterior")
           Else
            MsgBox "La Lectura Actual es menor que la Anterior", vbCritical
            Exit Sub
         End If
       End If
          lsql = "UPDATE suscriptor SET " _
          & " lecturatemp=" & iLectura & "," _
          & " FechaLecturaActual = '" & dtpFecha.Value & "', " _
          & " lecturaactual='" & iLectura & "'," _
          & " id_lector=" & cmbLector.ItemData(cmbLector.ListIndex) & "," _
          & " consumoactual=" & iConsumo & " " _
          & " WHERE sistema=" & iSistema
          BaseExecute lsql
          
          If idLectura <> "" Then
          
             lsql = "DELETE FROM nolectura_suscriptor WHERE id_suscriptor=" & idSuscriptor & " " _
             & " AND id_fecha= " & gFecha
             BaseExecute lsql
             If Val(idLectura) <> 0 Then
               lsql = "INSERT INTO nolectura_suscriptor VALUES (" & Val(idLectura) & "," & idSuscriptor & ", " _
               & " '" & getDate & "'," & gFecha & ") "
               BaseExecute lsql
             End If
          End If
          
          
    End If
    Reg.Close
    Set Reg = Nothing
 End If
End Sub

Private Sub MfgLectura_ComboCloseUp(ByVal Row As Long, ByVal Col As Long, FinishEdit As Boolean)
Dim SQL As String
Dim idSuscriptor As Long
Dim Reg As ADODB.Recordset
    With MfgLectura
    
        SalvarLectura Val(.TextMatrix(Row, 1)), Val(.TextMatrix(Row, 0)), .Cell(0, Row, 2, Row, 2)
        Set Reg = New ADODB.Recordset
        SQL = "SELECT * FROM suscriptor " _
        & " WHERE sistema=" & Val(.TextMatrix(Row, 0))
        ExecuteSql Reg, SQL
        If gError = 0 Then
           If Not Reg.BOF Then
         
              idSuscriptor = Reg("id")
           End If
           Reg.Close
        End If
        Set Reg = Nothing
        
        If .Cell(0, Row, 2, Row, 2) <> "" Then
          
             SQL = "DELETE FROM nolectura_suscriptor WHERE id_suscriptor=" & idSuscriptor & " " _
             & " AND id_fecha= " & gFecha
             BaseExecute SQL
             If Val(.Cell(0, Row, 2, Row, 2)) <> 0 Then
               SQL = "INSERT INTO nolectura_suscriptor VALUES (" & Val(.Cell(0, Row, 2, Row, 2)) & "," & idSuscriptor & ", " _
               & " '" & getDate & "'," & gFecha & ") "
               BaseExecute SQL
             End If
          End If
    End With
End Sub

Private Sub MfgLectura_ComboDropDown(ByVal Row As Long, ByVal Col As Long)
' With MfgLectura
'        SalvarLectura Val(.TextMatrix(Row, 1)), Val(.TextMatrix(Row, 0)), .Cell(flexcpText, Row, 2)
'    End With
End Sub

Private Sub MfgLectura_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
Dim i As Integer
 With MfgLectura
    For i = 0 To .ComboCount - 1 ' select "Cedric"
        If .ComboItem(i) = "2" Then
           .ComboIndex = i
           Exit For
        End If
    Next
 End With
End Sub

Private Sub MfgLectura_KeyPressEdit(ByVal Row As Long, ByVal Col As Long, KeyAscii As Integer)
Dim iRow As Long
    If Col = 0 Then Exit Sub
    If KeyAscii = 13 Then
       With MfgLectura
           .EditCell
           iRow = .Row
            If .Row = .Rows - 1 Then
               .Row = 1
              Else
               .Row = .Row + 1
            End If
             SalvarLectura Val(.TextMatrix(iRow, 1)), Val(.TextMatrix(iRow, 0)), .Cell(flexcpText, Row, 2, Row, 2)
       End With
       
       
     Else
      If Not ValidarNumero(KeyAscii) Then
         MsgBox "Solo Valores Numéricos", vbCritical
         Exit Sub
      End If
    End If
    
End Sub

Private Sub MfgLectura_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
Dim iCol As Long

    If cmbLector.ListIndex = -1 Then
       MsgBox "Falta Escoger Lector", vbCritical
       Exit Sub
    End If
    

End Sub
