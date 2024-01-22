VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_PagosDias 
   Caption         =   "Listado de Pagos por Dia"
   ClientHeight    =   7635
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8700
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   7635
   ScaleWidth      =   8700
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FraTabla 
      Height          =   7830
      Left            =   60
      TabIndex        =   0
      Top             =   720
      Width           =   11715
      Begin MSFlexGridLib.MSFlexGrid MfgSuscriptor 
         Height          =   6135
         Left            =   210
         TabIndex        =   10
         Top             =   1470
         Width           =   11355
         _ExtentX        =   20029
         _ExtentY        =   10821
         _Version        =   393216
      End
      Begin VB.ComboBox cmbEntidad 
         Height          =   315
         Left            =   2430
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   540
         Width           =   2685
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check1"
         Height          =   225
         Left            =   180
         TabIndex        =   5
         Top             =   180
         Width           =   255
      End
      Begin VB.Frame Frame1 
         Caption         =   "   Fecha de Pago"
         Height          =   1125
         Left            =   180
         TabIndex        =   1
         Top             =   180
         Width           =   2205
         Begin MSComCtl2.DTPicker DtpFechaIni 
            Height          =   315
            Left            =   630
            TabIndex        =   6
            Top             =   270
            Width           =   1305
            _ExtentX        =   2302
            _ExtentY        =   556
            _Version        =   393216
            Format          =   16842753
            CurrentDate     =   39040
         End
         Begin MSComCtl2.DTPicker DtpFechaFin 
            Height          =   315
            Left            =   630
            TabIndex        =   7
            Top             =   660
            Width           =   1305
            _ExtentX        =   2302
            _ExtentY        =   556
            _Version        =   393216
            Format          =   16842753
            CurrentDate     =   39040
         End
         Begin VB.Label Label1 
            Caption         =   "Desde"
            Height          =   255
            Left            =   60
            TabIndex        =   3
            Top             =   300
            Width           =   525
         End
         Begin VB.Label Label2 
            Caption         =   "Hasta"
            Height          =   255
            Left            =   60
            TabIndex        =   2
            Top             =   660
            Width           =   525
         End
      End
      Begin VB.Label lblEntidad 
         Caption         =   "Entidad"
         Height          =   225
         Left            =   2430
         TabIndex        =   8
         Top             =   300
         Width           =   675
      End
   End
   Begin MSComctlLib.Toolbar TbrBarHerramientas 
      Align           =   1  'Align Top
      Height          =   630
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   8700
      _ExtentX        =   15346
      _ExtentY        =   1111
      ButtonWidth     =   1191
      ButtonHeight    =   953
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   2
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Imprimir"
            Key             =   "BtnImprimir"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
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
               Picture         =   "frm_PagosDias.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":1D0A
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":25E4
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":2EBE
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":86B0
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":B1BA
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":10DDC
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":13E5E
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_PagosDias.frx":15B38
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_PagosDias"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim lFilter As String
Dim iOrden(10) As Boolean
Dim lOrden As String
Dim gSql As String
Dim iCodigo As Byte
Dim SQL As String
Dim gSistema As Long
Dim iRow As Long
Dim iCol As Long
Dim strFecha As String
Dim strEntidad As String
Dim gFilter As String
Dim lsql As String




Private Sub CargueEntidad()
Dim Contador As Long
Dim Reg As ADODB.Recordset
    
    SQL = "SELECT Nombre, id as ID FROM entidad ORDER BY nombre ASC"
     
    Contador = 0
    cmbEntidad.Clear
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Reg.BOF Then
          cmbEntidad.AddItem "TODOS"
          cmbEntidad.ItemData(Contador) = Contador
          While Not Reg.EOF
                Contador = Contador + 1
                cmbEntidad.AddItem Reg("nombre")
                cmbEntidad.ItemData(Contador) = Reg("id")
               Reg.MoveNext
          Wend
       End If
       Reg.Close
       Set Reg = Nothing
       cmbEntidad.ListIndex = 0
    End If
    
End Sub


Private Sub Check1_Click()
    If Check1.Value = 1 Then
       DtpFechaIni.Enabled = True
       DtpFechaFin.Enabled = True
       strFecha = " AND facturacion.fecha_pagada>=#" & Format(DtpFechaIni.Value, "MM/dd/yyyy") & "# AND " _
       & "  facturacion.fecha_pagada<=#" & Format(DtpFechaFin.Value, "MM/dd/yyyy") & "#"
    Else
       strFecha = ""
       DtpFechaIni.Enabled = False
       DtpFechaFin.Enabled = False
    End If
    FiltroAvanzado
End Sub

Private Sub cmbEntidad_Change()
    cmbEntidad_Click
End Sub

Private Sub cmbEntidad_Click()
  If cmbEntidad.ListIndex <> 0 Then
    strEntidad = " AND entidad.id=" & cmbEntidad.ItemData(cmbEntidad.ListIndex)
  Else
    strEntidad = ""
  End If
  FiltroAvanzado
End Sub

Private Sub DtpFechaFin_Change()
DtpFechaFin_Click
End Sub

Private Sub DtpFechaFin_Click()
    strFecha = " AND facturacion.fecha_pagada>=#" & Format(DtpFechaIni.Value, "MM/dd/yyyy") & "# AND " _
    & "  facturacion.fecha_pagada<=#" & Format(DtpFechaFin.Value, "MM/dd/yyyy") & "#"
    FiltroAvanzado
End Sub



Private Sub DtpFechaIni_Change()
    DtpFechaIni_Click
End Sub

Private Sub DtpFechaIni_Click()
    strFecha = " AND facturacion.fecha_pagada>=#" & Format(DtpFechaIni.Value, "MM/dd/yyyy") & "# AND " _
    & "  facturacion.fecha_pagada<=#" & Format(DtpFechaFin.Value, "MM/dd/yyyy") & "#"
    FiltroAvanzado
End Sub

Private Sub Form_Load()
Dim i As Integer
        
   
    
    For i = 0 To 10
        iOrden(i) = False
    Next i
    lFilter = ""
    DtpFechaIni.Value = getDate
    DtpFechaFin.Value = DtpFechaIni.Value
    
    If Check1.Value = 1 Then
       DtpFechaIni.Enabled = True
       DtpFechaFin.Enabled = True
    Else
       DtpFechaIni.Enabled = False
       DtpFechaFin.Enabled = False
       strFecha = ""
    End If
     CargueEntidad
     
End Sub




Private Sub TbrBarHerramientas_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim iForm As frm_Reporte
    Select Case Button.key
        
        Case "BtnImprimir"
             Set iForm = New frm_Reporte
             
             gFilter = "facturacion.pagada=TRUE " & strEntidad & strFecha
             Screen.MousePointer = vbHourglass
             iForm.UpdateReport lsql, gFilter, "rptpagosdias.rpt", False, "", False
             iForm.Show
        Screen.MousePointer = vbDefault
        Case "BtnSalir"
             Unload Me
             
             
    End Select
     
End Sub


Private Sub FiltroAvanzado()

 lsql = "SELECT suscriptor.sistema AS Sistema, facturacion.total As Total,facturacion.fecha_pagada AS [Fecha Pago],entidad.nombre As Entidad,fecha.fecha " _
 & " FROM (((entidad INNER JOIN facturacion ON entidad.id=facturacion.id_entidad) INNER JOIN " _
 & " (suscriptor INNER JOIN detalle_facturacion ON suscriptor.id=detalle_facturacion.id_suscriptor) ON " _
 & " facturacion.id=detalle_facturacion.id_factura) INNER JOIN MaxFecha ON " _
 & " facturacion.id_fecha=MaxFecha.id_fecha) INNER JOIN fecha ON MaxFecha.id_fecha=fecha.id "
 

 gSql = lsql & " WHERE " & " facturacion.pagada=TRUE"
  gFilter = ""
  If strEntidad <> "" Then
     gSql = gSql & strEntidad
     gFilter = strEntidad
  End If
  If strFecha <> "" Then
     gSql = gSql & strFecha
     gFilter = gFilter & strFecha
  End If
  
  
          
     If lOrden <> "" Then
        gSql = gSql & " ORDER BY " & lOrden
     End If
     
   Actualice_Datos gSql
   
End Sub
Private Sub Actualice_Datos(lsql As String)
Dim Ancho As Long
    Llene_Tabla2 MfgSuscriptor, lsql, "5"
    Ancho = MfgSuscriptor.Width
    Arregle_Ancho
End Sub

Private Sub Form_Resize()
Dim Ancho As Long
On Error Resume Next
    FraTabla.Width = Me.Width - 200
    FraTabla.Height = Me.Height - TbrBarHerramientas.Height - 600
    MfgSuscriptor.Height = FraTabla.Height - 1600
    MfgSuscriptor.Width = FraTabla.Width - 400
    Arregle_Ancho
End Sub
Private Sub Arregle_Ancho()
Dim Ancho As Long
On Error Resume Next
    With MfgSuscriptor
         Ancho = .Width
         .ColAlignment(1) = 1
         .ColAlignment(2) = 1
         .ColWidth(0) = Ancho / 80
         .ColWidth(1) = Ancho / 80 * 20
         .ColWidth(2) = Ancho / 80 * 20
         .ColWidth(3) = Ancho / 80 * 19
         .ColWidth(4) = Ancho / 80 * 19
         .ColWidth(5) = 0
         
         If .RowIsVisible(.Rows - 1) = False Then
           .ColWidth(1) = Ancho / 80 * 20 - 125
           .ColWidth(2) = Ancho / 80 * 20 - 125
      End If
    End With
End Sub
Private Sub MFgSuscriptor_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim Row As Integer
Dim Col As Integer
Dim lsql As String
Dim strFilter As String
Dim gstrFilter As String

    Row = MfgSuscriptor.MouseRow
    Col = MfgSuscriptor.MouseCol
    If Row = 0 Then
        If Button = 1 Then
            Select Case Col
                Case 1:
                    If iOrden(1) Then
                        lOrden = " Sistema DESC "
                      Else
                        lOrden = " Sistema ASC "
                    End If
                    iOrden(1) = Not iOrden(1)
                
                Case 2:
                    If iOrden(2) Then
                        lOrden = " Total DESC "
                      Else
                        lOrden = " Total ASC "
                    End If
                    iOrden(2) = Not iOrden(2)
                
                Case 3:
                    If iOrden(3) Then
                        lOrden = " [Fecha Pago]DESC "
                      Else
                        lOrden = " [Fecha Pago] ASC "
                    End If
                    iOrden(3) = Not iOrden(3)
                    
                Case 4:
                    If iOrden(4) Then
                        lOrden = " Entidad DESC "
                      Else
                        lOrden = " Entidad ASC "
                    End If
                    iOrden(4) = Not iOrden(4)
                    
                
                    
              End Select
            If Col > 0 And Col < 5 Then
                FiltroAvanzado
            End If
        End If
    End If
    If Col = 0 Then
        MfgSuscriptor.BackColorSel = &HFFFF80
    Else
        MfgSuscriptor.BackColorSel = &HFFFFFF
    End If
End Sub
