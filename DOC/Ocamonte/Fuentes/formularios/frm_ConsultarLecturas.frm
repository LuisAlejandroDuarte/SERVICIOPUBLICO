VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frm_ConsultarLecturas 
   Caption         =   "Consulta Lecturas"
   ClientHeight    =   7410
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10485
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   7410
   ScaleWidth      =   10485
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FraTabla 
      Height          =   6615
      Left            =   30
      TabIndex        =   0
      Top             =   660
      Width           =   10395
      Begin VB.Frame fraCodigo 
         Caption         =   "Código Suscriptor"
         Height          =   825
         Left            =   180
         TabIndex        =   1
         Top             =   150
         Width           =   2235
         Begin VB.ComboBox cmbCodigo 
            Height          =   315
            ItemData        =   "frm_ConsultarLecturas.frx":0000
            Left            =   150
            List            =   "frm_ConsultarLecturas.frx":0002
            TabIndex        =   2
            Top             =   330
            Width           =   1935
         End
      End
      Begin MSFlexGridLib.MSFlexGrid mfgMultas 
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
      ButtonWidth     =   1323
      ButtonHeight    =   953
      Appearance      =   1
      ImageList       =   "imgList"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   2
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Modificar"
            Key             =   "btnModificar"
            Object.ToolTipText     =   "Modifica la Multa seleccionada"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
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
               Picture         =   "frm_ConsultarLecturas.frx":0004
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultarLecturas.frx":5C26
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultarLecturas.frx":D128
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultarLecturas.frx":1291A
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultarLecturas.frx":15654
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_ConsultarLecturas.frx":1B8EE
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_ConsultarLecturas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim ComboBorrado As Boolean
Dim gCodigo As String
Dim lSql As String
Dim lFilter As String
Dim iOrden(10) As Boolean
Dim lOrden As String
Dim gCol As Integer
Dim iCodigo As Byte
Dim SQL As String
Dim gSistema As Long
Dim iRow As Long
Dim iCol As Long

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

Private Sub cmbCodigo_Change()
Static YaEstoy As Boolean
On Local Error Resume Next

   If Not YaEstoy Then
      YaEstoy = True
      unCombo_Change cmbCodigo.Text, cmbCodigo
      YaEstoy = False
      cmbCodigo_Click
   End If
Err = 0

End Sub

Private Sub cmbCodigo_Click()

     If cmbCodigo.ListIndex > 0 Then
          gCodigo = "  id=" & cmbCodigo.ItemData(cmbCodigo.ListIndex)
      Else
       gCodigo = ""
    End If
    
    FiltroAvanzado
End Sub

Private Sub CargueSuscriptor()
Dim Contador As Long
Dim Reg As ADODB.Recordset
    
    SQL = "SELECT sistema AS Nombre, id as ID FROM Suscriptor ORDER BY sistema ASC"
     
    Contador = 0
    cmbCodigo.Clear
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Reg.BOF Then
          cmbCodigo.AddItem "TODOS"
          cmbCodigo.ItemData(Contador) = Contador
          While Not Reg.EOF
                Contador = Contador + 1
                cmbCodigo.AddItem Reg("nombre")
                cmbCodigo.ItemData(Contador) = Reg("id")
               Reg.MoveNext
          Wend
       End If
       Reg.Close
       Set Reg = Nothing
      ' cmbCodigo.ListIndex = 0
    End If
    
End Sub


Private Sub Form_Load()
Dim i As Integer
        
    CargueSuscriptor

    FiltroAvanzado
    
    For i = 0 To 10
        iOrden(i) = False
    Next i
    lFilter = ""
    
End Sub

Private Sub mfgMultas_Click()
    With mfgMultas
         iRow = .MouseRow
         iCol = .MouseCol
         If iCol > 0 And iCol < 10 And iRow > 0 Then
            gSistema = .TextMatrix(iRow, 9)
         End If
    End With
    
End Sub

Private Sub TbrBarHerramientas_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim iForm As frm_ModificarLecturas
    Select Case Button.key
        
        Case "btnModificar"
                
             If gSistema = 0 Then
                MsgBox "Debe seleccionar una Fila ", vbCritical
                Exit Sub
             End If
             Set iForm = New frm_ModificarLecturas
             iForm.iSistema = gSistema
             iForm.Caption = "Código: " & mfgMultas.TextMatrix(iRow, 1)
             iForm.Show 0, Me
    
        Case "btnSalir"
             Unload Me
             
             
    End Select
     
End Sub


Private Sub FiltroAvanzado()
Dim SQL As String

 lSql = "SELECT sistema AS Sist, nombre AS Nombre," _
 & " lecturaTemp AS [Lect Actual], " _
 & " lecturaanterior AS [Lect Anterior]," _
 & " lectura6 AS [Lect 6],lectura5 AS [Lect 5]," _
 & " lectura4 AS [Lect 4],lectura3 AS [Lect 3]," _
 & " Sistema FROM suscriptor "
 
 
     If gCodigo <> "" Then
        lSql = lSql & " WHERE " & gCodigo
     Else
        lSql = lSql & " ORDER BY sistema ASC"
     End If
          
     If lOrden <> "" Then
        lSql = lSql & " ORDER BY " & lOrden
     End If
     
   Actualice_Datos lSql
   
End Sub
Private Sub Actualice_Datos(lSql As String)
Dim Ancho As Long
    Llene_Tabla2 mfgMultas, lSql, "9"
    Ancho = mfgMultas.Width
    Arregle_Ancho
End Sub

Private Sub Form_Resize()
Dim Ancho As Long
On Error Resume Next
    FraTabla.Width = Me.Width - 200
    FraTabla.Height = Me.Height - TbrBarHerramientas.Height - 600
    mfgMultas.Height = FraTabla.Height - 1250
    mfgMultas.Width = FraTabla.Width - 200
    Arregle_Ancho
End Sub
Private Sub Arregle_Ancho()
Dim Ancho As Long
On Error Resume Next
    With mfgMultas
         Ancho = .Width
         .ColWidth(0) = Ancho / 80
         .ColWidth(1) = Ancho / 80 * 12
         .ColWidth(2) = Ancho / 80 * 20
         .ColWidth(3) = Ancho / 80 * 8
         .ColWidth(4) = Ancho / 80 * 8
         .ColWidth(5) = Ancho / 80 * 8
         .ColWidth(6) = Ancho / 80 * 8
         .ColWidth(7) = Ancho / 80 * 7
         .ColWidth(8) = Ancho / 80 * 7
         .ColWidth(9) = Ancho / 80 * 0
         If .RowIsVisible(.Rows - 1) = False Then
           .ColWidth(1) = Ancho / 80 * 12 - 125
           .ColWidth(2) = Ancho / 80 * 20 - 125
      End If
    End With
End Sub
Private Sub MFgmultas_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim Row As Integer
Dim Col As Integer
Dim lSql As String
Dim strFilter As String
Dim gstrFilter As String

    Row = mfgMultas.MouseRow
    Col = mfgMultas.MouseCol
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
                        lOrden = " lecturaTemp DESC "
                      Else
                        lOrden = " lecturaTemp ASC "
                    End If
                    iOrden(3) = Not iOrden(3)
                    
                Case 4:
                    If iOrden(4) Then
                        lOrden = " lecturaanterior DESC "
                      Else
                        lOrden = " lecturaanterior ASC "
                    End If
                    iOrden(4) = Not iOrden(4)
                    
                Case 5:
                    If iOrden(5) Then
                        lOrden = " lectura6 DESC "
                      Else
                        lOrden = " lectura6 ASC "
                    End If
                    iOrden(5) = Not iOrden(5)
                    
                 Case 6:
                    If iOrden(6) Then
                        lOrden = "  lectura5 DESC "
                      Else
                        lOrden = "  lectura5 ASC "
                    End If
                    iOrden(6) = Not iOrden(6)
                    
                    
                Case 7:
                    If iOrden(7) Then
                        lOrden = "  lectura4 DESC "
                      Else
                        lOrden = "  lectura4 ASC "
                    End If
                    iOrden(7) = Not iOrden(7)
                    
               Case 8:
                    If iOrden(8) Then
                        lOrden = "  lectura3 DESC "
                      Else
                        lOrden = "  lectura3 ASC "
                    End If
                    iOrden(8) = Not iOrden(8)
                    
               Case 9:
                    If iOrden(9) Then
                        lOrden = "  lectura2 DESC "
                      Else
                        lOrden = "  lectura2 ASC "
                    End If
                    iOrden(9) = Not iOrden(9)
               Case 10:
                    If iOrden(10) Then
                        lOrden = "  lectura1 DESC "
                      Else
                        lOrden = "  lectura1 ASC "
                    End If
                    iOrden(10) = Not iOrden(10)
                    
                    
              End Select
            If Col > 0 And Col < 11 Then
                FiltroAvanzado
            End If
        End If
    End If
    If Col = 0 Then
        mfgMultas.BackColorSel = &HFFFF80
    Else
        mfgMultas.BackColorSel = &HFFFFFF
    End If
End Sub
Private Sub unCombo_Change(ByVal sText As String, elCombo As ComboBox)
Dim i As Integer, L As Integer

    If Not ComboBorrado Then
        L = Len(sText)
        With elCombo
            For i = 0 To .ListCount - 1
                If StrComp(sText, Left$(.List(i), L), 1) = 0 Then
                    .ListIndex = i
                    .Text = .List(.ListIndex)
                    .SelStart = L
                    .SelLength = Len(.Text) - .SelStart
                    Exit For
                End If
            Next
        End With
    End If
End Sub


