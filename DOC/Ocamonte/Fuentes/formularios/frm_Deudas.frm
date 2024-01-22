VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frm_Deudas 
   Caption         =   "Listado de Deudas"
   ClientHeight    =   7350
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11040
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   7350
   ScaleWidth      =   11040
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame FraTabla 
      Height          =   6615
      Left            =   30
      TabIndex        =   0
      Top             =   660
      Width           =   10395
      Begin VB.Frame fraCodigo 
         Caption         =   "Sistema"
         Height          =   825
         Left            =   180
         TabIndex        =   1
         Top             =   150
         Width           =   3165
         Begin VB.ComboBox cmbSistema 
            Height          =   315
            ItemData        =   "frm_Deudas.frx":0000
            Left            =   180
            List            =   "frm_Deudas.frx":0002
            Style           =   2  'Dropdown List
            TabIndex        =   2
            Top             =   360
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
      Width           =   11040
      _ExtentX        =   19473
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
               Picture         =   "frm_Deudas.frx":0004
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Deudas.frx":5C26
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Deudas.frx":D128
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Deudas.frx":1291A
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Deudas.frx":15654
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Deudas.frx":1B8EE
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_Deudas"
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
Dim iSuscriptor As Long

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

'Private Sub CargueFechas()
'
'Dim SQL As String
'
'    SQL = "SELECT format(fecha,'mmmm yyyy') AS Nombre, id as ID FROM fecha ORDER BY id DESC"
'     LlenarCombo cmbSistema, SQL
'
'
'End Sub


Private Sub cmbSistema_Change()
    cmbSistema_Click
End Sub

Private Sub cmbSistema_Click()
    
    
    UbicarCombo cmbSistema, cmbSistema.ItemData(cmbSistema.ListIndex)
    iSuscriptor = cmbSistema.ItemData(cmbSistema.ListIndex)
    FiltroAvanzado
End Sub
Private Sub CargueUsuarios()
Dim SQL As String
Dim i As Integer
Dim R1 As ADODB.Recordset
    
    
    
    SQL = "SELECT DISTINCT suscriptor.codigo AS Nombre, suscriptor.id AS id FROM suscriptor,deuda_suscriptor " _
    & " WHERE suscriptor.id=deuda_suscriptor.id_suscriptor "
    Set R1 = New ADODB.Recordset
    ExecuteSql R1, SQL
    If gError = 0 Then
       i = 0
       cmbSistema.Clear
       cmbSistema.AddItem "TODOS"
       cmbSistema.ItemData(i) = i
       While Not R1.EOF
            i = i + 1
            cmbSistema.AddItem R1("nombre")
            cmbSistema.ItemData(i) = R1("id")
            R1.MoveNext
      Wend
      R1.Close
    End If
    Set R1 = Nothing
     
     
End Sub


Private Sub Form_Load()
Dim i As Integer
        
    CargueUsuarios
    If cmbSistema.ListCount > 0 Then cmbSistema.ListIndex = 0
       
    
    
    For i = 0 To 10
        iOrden(i) = False
    Next i
    lFilter = ""
   ' FiltroAvanzado
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

    If MsgBox("Desea Eliminar la Deuda Seleccionada ?", vbDefaultButton2 + vbYesNo) = vbYes Then
       SQL = "DELETE FROM deuda_suscriptor WHERE id_suscriptor=" & id & " " _
       & " AND id_deuda=" & idd
       BaseExecute SQL
       FiltroAvanzado
    End If

End Sub
Private Sub TbrBarHerramientas_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim iForm As frm_Deuda
Dim Report As frm_Reporte
    Select Case Button.key
        
        Case "btnNuevo"
             Set iForm = New frm_Deuda
             iForm.Show 1, Me
             CargueUsuarios
             FiltroAvanzado
             
        Case "btnImprimir"
            Screen.MousePointer = vbHourglass
            Set Report = New frm_Reporte
            Report.UpdateReport "", "", "rptdeudas.rpt", False, "LISTADO ACTUAL DE DEUDAS", False
            Report.Show
            Screen.MousePointer = vbDefault
        Case "btnEliminar"
            If mfgAbonos.Rows = 1 Then Exit Sub
            Eliminar mfgAbonos.TextMatrix(mfgAbonos.Row, 8), mfgAbonos.TextMatrix(mfgAbonos.Row, 9)
            
        Case "btnSalir"
             Unload Me
             
             
    End Select
     
End Sub


Private Sub FiltroAvanzado()
Dim lsql As String

 lsql = "SELECT suscriptor.nombre AS Nombre,suscriptor.codigo AS Código," _
 & " deuda.nombre AS Deuda,control_deuda.ncuotas AS Cuotas,control_deuda.faltan As Faltan, " _
 & " control_deuda.valor_cuota AS Cuota," _
 & " control_deuda.valor_deuda AS Total ,suscriptor.id,deuda.id " _
 & " FROM suscriptor,control_deuda,deuda WHERE " _
 & " suscriptor.id=control_deuda.id_suscriptor AND " _
 & " control_deuda.id_deuda=deuda.id "
 
 If iSuscriptor > 0 Then
    lsql = lsql & " AND suscriptor.id=" & iSuscriptor
 End If
 
 If lOrden <> "" Then
     lsql = lsql & " ORDER BY " & lOrden
 End If
     
    SQLFilter = lsql
   Actualice_Datos lsql
   
End Sub
Private Sub Actualice_Datos(lsql As String)
Dim Ancho As Long
    Llene_Tabla2 mfgAbonos, lsql, "8,9"
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
         .ColWidth(1) = Ancho / 80 * 23
         .ColWidth(2) = Ancho / 80 * 10
         .ColWidth(3) = Ancho / 80 * 15
         .ColWidth(4) = Ancho / 80 * 5
         .ColWidth(5) = Ancho / 80 * 5
         .ColWidth(6) = Ancho / 80 * 9
         .ColWidth(7) = Ancho / 80 * 11
         .ColWidth(8) = 0
         .ColWidth(9) = 0
         
         If .RowIsVisible(.Rows - 1) = False Then
           .ColWidth(1) = Ancho / 80 * 6 - 125
           .ColWidth(2) = Ancho / 80 * 23 - 125
      End If
    End With
End Sub
Private Sub mfgAbonos_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
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
                        lOrden = " suscriptor.nombre DESC "
                      Else
                        lOrden = " suscriptor.nombre ASC "
                    End If
                    iOrden(1) = Not iOrden(1)
                
                Case 2:
                    If iOrden(2) Then
                        lOrden = " suscriptor.codigo DESC "
                      Else
                        lOrden = " suscriptor.codigo ASC "
                    End If
                    iOrden(2) = Not iOrden(2)
                
                Case 3:
                    If iOrden(3) Then
                        lOrden = " deuda.nombre DESC "
                      Else
                        lOrden = " deuda.nombre ASC "
                    End If
                    iOrden(3) = Not iOrden(3)
                    
                 Case 4:
                    If iOrden(4) Then
                        lOrden = " control_deuda.ncuotas DESC "
                      Else
                        lOrden = " control_deuda.ncuotas ASC "
                    End If
                    iOrden(4) = Not iOrden(4)
                    
                    
                  Case 5:
                    If iOrden(5) Then
                        lOrden = " control_deuda.faltan DESC "
                      Else
                        lOrden = " control_deuda.faltan ASC "
                    End If
                    iOrden(5) = Not iOrden(5)
                    
                    
                 Case 6:
                 
                    If iOrden(6) Then
                        lOrden = " control_deuda.valor_cuota DESC "
                      Else
                        lOrden = " control_deuda.valor_cuota ASC "
                    End If
                    iOrden(6) = Not iOrden(6)
                    
                    
                  Case 7:
                 
                    If iOrden(7) Then
                        lOrden = " control_deuda.valor_deuda DESC "
                      Else
                        lOrden = " control_deuda.valor_deuda ASC "
                    End If
                    iOrden(7) = Not iOrden(7)
                 
                 
                 
                 
              End Select
            If Col > 0 And Col < 8 Then
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










