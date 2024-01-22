VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frm_Debitos 
   Caption         =   "Listados Débitos"
   ClientHeight    =   7305
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10485
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   7305
   ScaleWidth      =   10485
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame FraTabla 
      Height          =   6615
      Left            =   30
      TabIndex        =   0
      Top             =   660
      Width           =   10395
      Begin VB.Frame fraCodigo 
         Caption         =   "Fecha"
         Height          =   825
         Left            =   180
         TabIndex        =   1
         Top             =   150
         Width           =   3165
         Begin VB.ComboBox cmbFecha 
            Height          =   315
            ItemData        =   "frm_Debitos.frx":0000
            Left            =   150
            List            =   "frm_Debitos.frx":0002
            Style           =   2  'Dropdown List
            TabIndex        =   2
            Top             =   390
            Width           =   2925
         End
      End
      Begin MSFlexGridLib.MSFlexGrid mfgAbonos 
         Height          =   5445
         Left            =   180
         TabIndex        =   3
         Top             =   1020
         Width           =   10155
         _ExtentX        =   17912
         _ExtentY        =   9604
         _Version        =   393216
         ForeColorSel    =   -2147483630
         AllowUserResizing=   1
      End
   End
   Begin MSComctlLib.Toolbar TbrBarHerramientas 
      Align           =   1  'Align Top
      Height          =   630
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   10485
      _ExtentX        =   18494
      _ExtentY        =   1111
      ButtonWidth     =   1191
      ButtonHeight    =   953
      Appearance      =   1
      ImageList       =   "imgList"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   4
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Nuevo"
            Key             =   "btnNuevo"
            Object.ToolTipText     =   "Modifica la Multa seleccionada"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Eliminar"
            Key             =   "btnEliminar"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Imprimir"
            Key             =   "btnImprimir"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Salir"
            Key             =   "btnSalir"
            Object.ToolTipText     =   "Cierra la Actual Ventana"
            ImageIndex      =   2
         EndProperty
      EndProperty
      Begin MSComctlLib.ImageList imgList 
         Left            =   6420
         Top             =   90
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   16
         ImageHeight     =   16
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   6
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Debitos.frx":0004
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Debitos.frx":5C26
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Debitos.frx":D128
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Debitos.frx":1291A
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Debitos.frx":15654
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Debitos.frx":1B8EE
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_Debitos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim ComboBorrado As Boolean
Dim gCodigo As String
Dim lsql As String
Dim lFilter As String
Dim iOrden(10) As Boolean
Dim lOrden As String
Dim gCol As Integer
Dim iCodigo As Byte
Dim SQL As String
Dim SQLFilter As String
Dim gSistema As Long
Dim iRow As Long
Dim iCol As Long
Dim iFecha As Long

Private Sub Cmbcodigo_KeyPress(KeyAscii As Integer)

 If KeyAscii = vbKeyBack Then
    ComboBorrado = True
   Else
  ComboBorrado = False
 End If

End Sub
Private Sub Cmbcodigo_KeyDown(KeyCode As Integer, Shift As Integer)


   unCombo_KeyDown KeyCode

End Sub

Private Sub unCombo_KeyDown(KeyCode As Integer)
    If KeyCode = vbKeyDelete Then
        ComboBorrado = True
    Else
        ComboBorrado = False
    End If
End Sub

'Private Sub cmbCodigo_Change()
'Static YaEstoy As Boolean
'On Local Error Resume Next
'
'   If Not YaEstoy Then
'      YaEstoy = True
'      unCombo_Change cmbCodigo.Text, cmbCodigo
'      YaEstoy = False
'      cmbCodigo_Click
'   End If
'err = 0
'
'End Sub
'
'Private Sub cmbCodigo_Click()
'
'     If cmbCodigo.ListIndex > 0 Then
'          gCodigo = "  id=" & cmbCodigo.ItemData(cmbCodigo.ListIndex)
'      Else
'       gCodigo = ""
'    End If
'
'    FiltroAvanzado
'End Sub

Private Sub CargueFechas()

Dim SQL As String
    
    SQL = "SELECT format(fecha,'mmmm yyyy') AS Nombre, id as ID FROM fecha ORDER BY id DESC"
     LlenarCombo cmbFecha, SQL
   
    
End Sub


Private Sub cmbFecha_Change()
    cmbFecha_Click
End Sub

Private Sub cmbFecha_Click()
    
    
    UbicarCombo cmbFecha, cmbFecha.ItemData(cmbFecha.ListIndex)
    iFecha = cmbFecha.ItemData(cmbFecha.ListIndex)
    FiltroAvanzado
End Sub

Private Sub Form_Load()
Dim i As Integer
        
    CargueFechas
    If cmbFecha.ListCount > 0 Then cmbFecha.ListIndex = 0
       
    
    
    For i = 0 To 10
        iOrden(i) = False
    Next i
    lFilter = ""
    
End Sub

Private Sub mfgAbonos_Click()
'    With mfgAbonos
'         iRow = .MouseRow
'         iCol = .MouseCol
'         If iCol > 0 And iCol < 10 And iRow > 0 Then
'            gSistema = .TextMatrix(iRow, 9)
'         End If
'    End With
    
End Sub
Private Sub Eliminar(id As Long, idd As Long)
Dim SQL As String

    If MsgBox("Desea Eliminar el Débito Seleccionado ? " & mfgAbonos.TextMatrix(mfgAbonos.Row, 1), vbDefaultButton2 + vbYesNo) = vbYes Then
       SQL = "DELETE FROM debito WHERE id_suscriptor=" & id & " " _
       & " AND id_fecha=" & idd
       BaseExecute SQL
       FiltroAvanzado
    End If

End Sub

Private Sub TbrBarHerramientas_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim iForm As frm_Debito
Dim Report As frm_Reporte
    Select Case Button.key
        
        Case "btnNuevo"
             Set iForm = New frm_Debito
             iForm.Show 1, Me
             FiltroAvanzado
             
        Case "btnImprimir"
            Set Report = New frm_Reporte
            Report.UpdateReport SQLFilter, "", "RptDebito.rpt", False, "", False
            Report.Show
            
         Case "btnEliminar"
          If mfgAbonos.Rows = 1 Then Exit Sub
            Eliminar mfgAbonos.TextMatrix(mfgAbonos.Row, 4), mfgAbonos.TextMatrix(mfgAbonos.Row, 5)
        Case "btnSalir"
             Unload Me
             
             
    End Select
     
End Sub


Private Sub FiltroAvanzado()
Dim lsql As String

    lsql = "SELECT codigo AS Código, nombre AS Nombre," _
    & " debito.valor AS Valor,suscriptor.id,fecha.id " _
    & " FROM suscriptor,debito,fecha WHERE " _
    & " suscriptor.id=debito.id_suscriptor AND " _
    & " debito.id_fecha=fecha.id " _
    & " AND fecha.id=" & iFecha
    
    If lOrden <> "" Then
        lsql = lsql & " ORDER BY " & lOrden
    End If
        
       SQLFilter = lsql
       Actualice_Datos lsql
   
End Sub
Private Sub Actualice_Datos(lsql As String)
Dim Ancho As Long
    Llene_Tabla2 mfgAbonos, lsql, "4,5"
    Ancho = mfgAbonos.Width
    Arregle_Ancho
End Sub

Private Sub Form_Resize()
Dim Ancho As Long
On Error Resume Next
    FraTabla.Width = Me.Width - 200
    FraTabla.Height = Me.Height - TbrBarHerramientas.Height - 600
    mfgAbonos.Height = FraTabla.Height - 1250
    mfgAbonos.Width = FraTabla.Width - 200
    Arregle_Ancho
End Sub
Private Sub Arregle_Ancho()
Dim Ancho As Long
On Error Resume Next
    With mfgAbonos
         Ancho = .Width
         .ColWidth(0) = Ancho / 80
         .ColWidth(1) = Ancho / 80 * 12
         .ColWidth(2) = Ancho / 80 * 56
         .ColWidth(3) = Ancho / 80 * 10
         .ColWidth(4) = 0
         .ColWidth(5) = 0
         If .RowIsVisible(.Rows - 1) = False Then
           .ColWidth(1) = Ancho / 80 * 12 - 125
           .ColWidth(2) = Ancho / 80 * 56 - 125
      End If
    End With
End Sub
Private Sub mfgAbonos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim Row As Integer
Dim Col As Integer
Dim lsql As String
Dim strFilter As String
Dim gstrFilter As String

    Row = mfgAbonos.MouseRow
    Col = mfgAbonos.MouseCol
    If Row = 0 Then
        If Button = 1 Then
            Select Case Col
                Case 1:
                    If iOrden(1) Then
                        lOrden = " codigo DESC "
                      Else
                        lOrden = " codigo ASC "
                    End If
                    iOrden(1) = Not iOrden(1)
                
                Case 2:
                    If iOrden(2) Then
                        lOrden = " Nombre DESC "
                      Else
                        lOrden = " Nombre ASC "
                    End If
                    iOrden(2) = Not iOrden(2)
                
                Case 3:
                    If iOrden(3) Then
                        lOrden = " valor DESC "
                      Else
                        lOrden = " valor ASC "
                    End If
                    iOrden(3) = Not iOrden(3)
                    
                    
                    
              End Select
            If Col > 0 And Col < 4 Then
                FiltroAvanzado
            End If
        End If
    End If
    If Col = 0 Then
        mfgAbonos.BackColorSel = &HFFFF80
    Else
        mfgAbonos.BackColorSel = &HFFFFFF
    End If
End Sub






