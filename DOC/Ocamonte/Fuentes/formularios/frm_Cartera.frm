VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frm_Cartera 
   Caption         =   "CARTERA"
   ClientHeight    =   8175
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10335
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   8175
   ScaleWidth      =   10335
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FraTabla 
      Height          =   7470
      Left            =   30
      TabIndex        =   0
      Top             =   660
      Width           =   10200
      Begin VB.Frame Frame1 
         Caption         =   "Atraso (m)"
         Height          =   795
         Left            =   180
         TabIndex        =   2
         Top             =   180
         Width           =   1875
         Begin VB.TextBox txtHasta 
            Height          =   255
            Left            =   840
            TabIndex        =   7
            Text            =   "3"
            Top             =   480
            Width           =   735
         End
         Begin VB.TextBox txtDesde 
            Height          =   255
            Left            =   840
            TabIndex        =   6
            Text            =   "1"
            Top             =   210
            Width           =   735
         End
         Begin VB.Label Label1 
            Caption         =   "Desde"
            Height          =   255
            Left            =   120
            TabIndex        =   4
            Top             =   240
            Width           =   525
         End
         Begin VB.Label Label2 
            Caption         =   "Hasta"
            Height          =   255
            Left            =   120
            TabIndex        =   3
            Top             =   510
            Width           =   525
         End
      End
      Begin MSDataGridLib.DataGrid MfgLiquidacion 
         Height          =   6255
         Left            =   180
         TabIndex        =   1
         Top             =   1050
         Width           =   9855
         _ExtentX        =   17383
         _ExtentY        =   11033
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
   End
   Begin MSComctlLib.Toolbar TbrBarHerramientas 
      Align           =   1  'Align Top
      Height          =   630
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   10335
      _ExtentX        =   18230
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
               Picture         =   "frm_Cartera.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":1D0A
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":25E4
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":2EBE
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":86B0
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":B1BA
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":10DDC
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":13E5E
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Cartera.frx":15B38
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_Cartera"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim iOrden(13) As Boolean
Dim lOrden As String
Dim strMesAtraso As String
Dim gReg As ADODB.Recordset
Dim strSQL As String

Private Sub Filtro()
Dim SQL As String

    SQL = "SELECT suscriptor.sistema , " _
    & " suscriptor.codigo,suscriptor.nombre AS NOMBRE, suscriptor.direccion AS DIRECCIÓN,  [UltimoRefacturado].[Acueducto]+ " _
    & " [UltimoRefacturado].[Alcantarillado]+[UltimoRefacturado].[Aseo]+" _
    & " [UltimoRefacturado].[Debito]+[UltimoRefacturado].[Otro]+ " _
    & " IIf([suma_Refacturado_deuda].[deuda_refa] Is Null,0,[suma_Refacturado_deuda].[deuda_refa]) " _
    & " AS Refacturado, suscriptor.atraso FROM suscriptor RIGHT JOIN " _
    & " (suma_refacturado_deuda RIGHT JOIN UltimoRefacturado ON " _
    & " suma_refacturado_deuda.id_suscriptor = UltimoRefacturado.id_suscriptor) ON " _
    & " suscriptor.id = UltimoRefacturado.id_suscriptor"

            
                     
    
    If gReg.State = 1 Then
       gReg.Close
    End If
    
    If strMesAtraso <> "" Then
       SQL = SQL & " WHERE " & strMesAtraso
    End If
    
    If lOrden <> "" Then
       SQL = SQL & " ORDER BY " & lOrden
    End If
    
    
    Actualice_Datos SQL
     strSQL = SQL
'    gReg.Sort = " sistema ASC"
'      lOrden = " Sistema ASC "
     
End Sub

Private Sub Form_Load()
Dim i As Integer
Dim SQL As String
Dim R1 As ADODB.Recordset
    

          
    For i = 0 To 13
        iOrden(i) = False
    Next i
    Set gReg = New ADODB.Recordset
    strMesAtraso = "  suscriptor.atraso>=" & Val(txtDesde.Text) & " AND suscriptor.atraso<=" & Val(txtHasta.Text)
    Filtro
End Sub
Private Sub Actualice_Datos(lsql As String)
Dim Ancho As Long
     
    Llene_TablaGrid MfgLiquidacion, lsql, gReg, "6,7,8,9"
    Ancho = MfgLiquidacion.Width
    
    Arregle_Ancho
End Sub

Private Sub Form_Resize()
Dim Ancho As Long
On Error Resume Next
    FraTabla.Width = Me.Width - 200
    FraTabla.Height = Me.Height - TbrBarHerramientas.Height - 600
    MfgLiquidacion.Height = FraTabla.Height - 1250
    MfgLiquidacion.Width = FraTabla.Width - 400
    Arregle_Ancho
End Sub
Private Sub Arregle_Ancho()
Dim Ancho As Long
On Error Resume Next
    With MfgLiquidacion
         Ancho = .Width
         .Columns(0).Width = Ancho * 0.07
         .Columns(1).Width = Ancho * 0.19
         .Columns(2).Width = Ancho * 0.255
         .Columns(3).Width = Ancho * 0.255
         .Columns(4).Width = Ancho * 0.1
         .Columns(5).Width = Ancho * 0.06
         .Columns(6).Width = Ancho * 0
         .Columns(7).Width = Ancho * 0
         .Columns(8).Width = Ancho * 0
         .Columns(9).Width = Ancho * 0
          

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
                  lOrden = " Sistema DESC "
               Else
                  lOrden = " Sistema ASC "
               End If
            iOrden(0) = Not iOrden(0)
            
            Case 1:
               If iOrden(1) Then
                  lOrden = " suscriptor.Codigo DESC "
               Else
                  lOrden = " suscriptor.Codigo ASC "
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
                  lOrden = " suscriptor.Direccion DESC "
               Else
                  lOrden = " suscriptor.Direccion ASC "
               End If
             iOrden(3) = Not iOrden(3)
             
              Case 4
               If iOrden(4) Then
                  lOrden = " [UltimoRefacturado].[Acueducto]+ " _
                    & " [UltimoRefacturado].[Alcantarillado]+[UltimoRefacturado].[Aseo]+" _
                    & " [UltimoRefacturado].[Debito]+[UltimoRefacturado].[Otro]+ " _
                    & " IIf([suma_Refacturado_deuda].[deuda_refa] Is Null,0,[suma_Refacturado_deuda].[deuda_refa]) DESC "
               Else
                     lOrden = " [UltimoRefacturado].[Acueducto]+ " _
                     & " [UltimoRefacturado].[Alcantarillado]+[UltimoRefacturado].[Aseo]+" _
                     & " [UltimoRefacturado].[Debito]+[UltimoRefacturado].[Otro]+ " _
                     & " IIf([suma_Refacturado_deuda].[deuda_refa] Is Null,0,[suma_Refacturado_deuda].[deuda_refa]) ASC "
               End If
             iOrden(4) = Not iOrden(4)
             
              Case 5
               If iOrden(5) Then
                  lOrden = " suscriptor.Atraso DESC "
               Else
                  lOrden = " suscriptor.atraso ASC "
               End If
             iOrden(5) = Not iOrden(5)
             
              
      End Select
      
      
    Filtro
'      gReg.Sort = lOrden
'
'            strSQL = strSQL & " ORDER BY " & lOrden
End Sub

Private Sub TbrBarHerramientas_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim lsql As String
Dim Report As frm_Reporte

    Select Case Button.key
    
          Case "BtnSalir"
                Unload Me
                
           Case "BtnImprimir"
              
             Set Report = New frm_Reporte
                

                
               Report.UpdateReportReg gReg, strSQL, "", "RptCartera.rpt", "CARTERA", False
               Report.Show
                 
    End Select
 
 
End Sub


Private Sub txtDesde_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
       strMesAtraso = "  suscriptor.atraso>=" & Val(txtDesde.Text) & " AND suscriptor.atraso<=" & Val(txtHasta.Text)
       Filtro
    End If
End Sub

Private Sub txtHasta_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
       strMesAtraso = "  suscriptor.atraso>=" & Val(txtDesde.Text) & " AND suscriptor.atraso<=" & Val(txtHasta.Text)
       Filtro
    End If
End Sub
