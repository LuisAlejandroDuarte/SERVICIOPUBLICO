VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_Busqueda 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Busqueda"
   ClientHeight    =   2475
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5520
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2475
   ScaleWidth      =   5520
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Height          =   600
      Left            =   90
      TabIndex        =   17
      Top             =   1800
      Width           =   5370
      Begin VB.CommandButton CmdCerrar 
         Caption         =   "&Cerrar"
         Height          =   330
         Left            =   3630
         TabIndex        =   20
         Top             =   180
         Width           =   1275
      End
      Begin VB.CommandButton CmdBuscar 
         Caption         =   "&Filtrar"
         Height          =   330
         Left            =   450
         TabIndex        =   19
         Top             =   180
         Width           =   1275
      End
      Begin VB.CommandButton CmdQuitar 
         Caption         =   "&Quitar Filtro"
         Enabled         =   0   'False
         Height          =   330
         Left            =   2025
         TabIndex        =   18
         Top             =   180
         Width           =   1275
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1710
      Left            =   90
      TabIndex        =   0
      Top             =   0
      Width           =   5355
      Begin VB.TextBox TxtValor2 
         Height          =   345
         Left            =   3900
         TabIndex        =   13
         Top             =   1245
         Width           =   1335
      End
      Begin VB.Frame Frame3 
         Height          =   450
         Left            =   1957
         TabIndex        =   9
         Top             =   780
         Width           =   1650
         Begin VB.OptionButton Opt2 
            Caption         =   "Y"
            Height          =   195
            Left            =   915
            TabIndex        =   11
            Top             =   165
            Width           =   495
         End
         Begin VB.OptionButton Opt1 
            Caption         =   "O"
            Height          =   195
            Left            =   300
            TabIndex        =   10
            Top             =   165
            Value           =   -1  'True
            Width           =   465
         End
      End
      Begin VB.ComboBox CmbCriterio2 
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
         Left            =   2115
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   1275
         Width           =   1700
      End
      Begin VB.ComboBox CmbCampo2 
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
         Left            =   90
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   1275
         Width           =   1980
      End
      Begin VB.ComboBox CmbCriterio1 
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
         ItemData        =   "frm_Busqueda.frx":0000
         Left            =   2160
         List            =   "frm_Busqueda.frx":0002
         Style           =   2  'Dropdown List
         TabIndex        =   6
         Top             =   390
         Width           =   1700
      End
      Begin VB.ComboBox CmbCampo1 
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
         ItemData        =   "frm_Busqueda.frx":0004
         Left            =   90
         List            =   "frm_Busqueda.frx":0006
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   390
         Width           =   1980
      End
      Begin VB.TextBox TxtValor1 
         Height          =   345
         Left            =   3900
         TabIndex        =   4
         Top             =   420
         Width           =   1335
      End
      Begin VB.ComboBox cmbBoolean1 
         Height          =   315
         ItemData        =   "frm_Busqueda.frx":0008
         Left            =   3930
         List            =   "frm_Busqueda.frx":0012
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   420
         Width           =   1320
      End
      Begin VB.ComboBox cmbBoolean2 
         Height          =   315
         ItemData        =   "frm_Busqueda.frx":001E
         Left            =   3900
         List            =   "frm_Busqueda.frx":0028
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   1260
         Width           =   1305
      End
      Begin MSComCtl2.DTPicker DTPFecha1 
         Height          =   330
         Left            =   3915
         TabIndex        =   3
         Top             =   420
         Width           =   1350
         _ExtentX        =   2381
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
         Format          =   57475073
         CurrentDate     =   38447
      End
      Begin MSComCtl2.DTPicker DTPFecha2 
         Height          =   330
         Left            =   3885
         TabIndex        =   12
         Top             =   1260
         Width           =   1350
         _ExtentX        =   2381
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
         Format          =   57475073
         CurrentDate     =   38447
      End
      Begin VB.Label Label2 
         Caption         =   "Criterio"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   270
         Left            =   2640
         TabIndex        =   16
         Top             =   210
         Width           =   570
      End
      Begin VB.Label Label1 
         Caption         =   "Campo"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   270
         Left            =   705
         TabIndex        =   15
         Top             =   180
         Width           =   540
      End
      Begin VB.Label Label4 
         Caption         =   "Valor"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   270
         Left            =   4335
         TabIndex        =   14
         Top             =   210
         Width           =   570
      End
   End
End
Attribute VB_Name = "frm_Busqueda"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Criterio As String
Dim countCriterio As String
Dim Formita As Form
Dim Busqueda(18, 5)


Public Sub Construya()

Dim Campo As String
Dim Valor As String

Criterio = ""
countCriterio = ""
If CmbCampo1.ListIndex <> -1 And CmbCriterio1.ListIndex <> -1 And Trim(TxtValor1.Text) <> "" Then
  Valor = TxtValor1.Text
  If Busqueda(CmbCampo1.ListIndex, 0) <> "" Then
     Campo = Busqueda(CmbCampo1.ListIndex, 0)
  End If
  
  Select Case CmbCriterio1.Text
    Case "Contiene":
        Criterio = Campo & " LIKE "
        countCriterio = Busqueda(CmbCampo1.ListIndex, 4) & "." & Busqueda(CmbCampo1.ListIndex, 3) & " LIKE "
    Case "Igual a":
        Criterio = Campo & " = "
        countCriterio = Busqueda(CmbCampo1.ListIndex, 4) & "." & Busqueda(CmbCampo1.ListIndex, 3) & " = "
    Case "Despues de":
            Criterio = Campo & " > "
            countCriterio = Busqueda(CmbCampo1.ListIndex, 4) & "." & Busqueda(CmbCampo1.ListIndex, 3) & " > "
    Case "Antes de":
            Criterio = Campo & " < "
            countCriterio = Busqueda(CmbCampo1.ListIndex, 4) & "." & Busqueda(CmbCampo1.ListIndex, 3) & " < "
    Case "Despues o igual a":
            Criterio = Campo & " >= "
            countCriterio = Busqueda(CmbCampo1.ListIndex, 4) & "." & Busqueda(CmbCampo1.ListIndex, 3) & " >= "
    Case "Antes o igual a":
            Criterio = Campo & " <= "
            countCriterio = Busqueda(CmbCampo1.ListIndex, 4) & "." & Busqueda(CmbCampo1.ListIndex, 3) & " <= "
    Case Else:
        Criterio = Campo & " " & CmbCriterio1.Text
        countCriterio = Busqueda(CmbCampo1.ListIndex, 4) & "." & Busqueda(CmbCampo1.ListIndex, 3) & " " & CmbCriterio1.Text
  End Select
  
  
  If CmbCampo1.ItemData(CmbCampo1.ListIndex) = dbText Or CmbCampo1.ItemData(CmbCampo1.ListIndex) = dbDate Then
    If CmbCriterio1.Text = "Contiene" Then
     Criterio = Criterio & " '%" & UCase(Valor) & "%'"
     countCriterio = countCriterio & " '%" & UCase(Valor) & "%'"
    Else
     Criterio = Criterio & " '" & Valor & "' "
     countCriterio = countCriterio & " '" & Valor & "' "
    End If
  Else
    Criterio = Criterio & Valor
    countCriterio = countCriterio & Valor
  End If
  If CmbCampo1.ListIndex <> -1 And CmbCriterio1.ListIndex <> -1 And Trim(TxtValor2.Text) <> "" Then
     If Opt1.Value = True Then Criterio = Criterio & " OR " Else Criterio = Criterio & " AND "
     If Opt1.Value = True Then countCriterio = countCriterio & " OR " Else countCriterio = countCriterio & " AND "
  End If
End If
If CmbCampo2.ListIndex <> -1 And CmbCriterio2.ListIndex <> -1 And Trim(TxtValor2.Text) <> "" Then
  Valor = TxtValor2.Text
  If Busqueda(CmbCampo2.ListIndex, 0) <> "" Then
     Campo = Busqueda(CmbCampo2.ListIndex, 0)
  End If
  Select Case CmbCriterio2.Text
    Case "Contiene":
        Criterio = Criterio & Campo & " LIKE "
        countCriterio = countCriterio & Busqueda(CmbCampo2.ListIndex, 4) & "." & Busqueda(CmbCampo2.ListIndex, 3) & " LIKE "
    Case "Igual a":
        Criterio = Criterio & Campo & " = "
        countCriterio = countCriterio & Busqueda(CmbCampo2.ListIndex, 4) & "." & Busqueda(CmbCampo2.ListIndex, 3) & " = "
    Case "Despues de":
            Criterio = Criterio & Campo & " > "
            countCriterio = countCriterio & Busqueda(CmbCampo2.ListIndex, 4) & "." & Busqueda(CmbCampo2.ListIndex, 3) & " > "
    Case "Antes de":
            Criterio = Criterio & Campo & " < "
            countCriterio = countCriterio & Busqueda(CmbCampo2.ListIndex, 4) & "." & Busqueda(CmbCampo2.ListIndex, 3) & " < "
    Case "Despues o igual a":
            Criterio = Criterio & Campo & " >= "
            countCriterio = countCriterio & Busqueda(CmbCampo2.ListIndex, 4) & "." & Busqueda(CmbCampo2.ListIndex, 3) & " >= "
    Case "Antes o igual a":
            Criterio = Criterio & Campo & " <= "
            countCriterio = countCriterio & Busqueda(CmbCampo2.ListIndex, 4) & "." & Busqueda(CmbCampo2.ListIndex, 3) & " <= "
    Case Else:
        Criterio = Criterio & Campo & " " & CmbCriterio2.Text
        countCriterio = countCriterio & Busqueda(CmbCampo2.ListIndex, 4) & "." & Busqueda(CmbCampo2.ListIndex, 3) & " " & CmbCriterio2.Text
  End Select
  If CmbCampo2.ItemData(CmbCampo2.ListIndex) = dbText Or CmbCampo2.ItemData(CmbCampo2.ListIndex) = dbDate Then
    If CmbCriterio2.Text = "Contiene" Then
     Criterio = Criterio & " '%" & UCase(Valor) & "%'"
     countCriterio = countCriterio & " '%" & UCase(Valor) & "%'"
    Else
     Criterio = Criterio & " '" & Valor & "'"
     countCriterio = countCriterio & " '" & Valor & "'"
    End If
  Else
    Criterio = Criterio & Valor
    countCriterio = countCriterio & Valor
  End If
End If
End Sub

Private Sub cmbBoolean1_Change()
    cmbBoolean1_Click
End Sub

Private Sub cmbBoolean1_Click()
    TxtValor1.Text = IIf(cmbBoolean1.ItemData(cmbBoolean1.ListIndex) = 1, "True", "False")
End Sub

Private Sub cmbBoolean2_Change()
    cmbBoolean2_Click
End Sub

Private Sub cmbBoolean2_Click()
    TxtValor2.Text = IIf(cmbBoolean2.ItemData(cmbBoolean2.ListIndex) = 1, "True", "False")
End Sub

Private Sub CmbCampo1_Change()
  CmbCampo1_Click
End Sub

Private Sub CmbCampo1_Click()
  Dim i As Integer
  For i = 1 To CmbCriterio1.ListCount
     CmbCriterio1.RemoveItem (0)
  Next i
  TxtValor1.Visible = True
  TxtValor1.Text = ""
  dtpFecha1.Visible = False
  cmbBoolean1.Visible = False
  Select Case CmbCampo1.ItemData(CmbCampo1.ListIndex)
        Case dbBoolean
            TxtValor1.Visible = False
            dtpFecha1.Visible = False
            cmbBoolean1.Visible = True
            CmbCriterio1.List(0) = "="
            CmbCriterio1.List(1) = "<>"
            CmbCriterio1.ListIndex = 0
        Case dbByte, dbInteger, dbLong, dbCurrency, dbSingle, dbDouble
            CmbCriterio1.List(0) = "="
            CmbCriterio1.List(1) = ">"
            CmbCriterio1.List(2) = "<"
            CmbCriterio1.List(3) = "<>"
            CmbCriterio1.ListIndex = 0
        Case dbText
            CmbCriterio1.List(0) = "Contiene"
            CmbCriterio1.List(1) = "="
            CmbCriterio1.List(2) = ">"
            CmbCriterio1.List(3) = "<"
            CmbCriterio1.List(4) = "<>"
            CmbCriterio1.ListIndex = 0
        
        Case dbDate
            TxtValor1.Visible = False
            dtpFecha1.Value = getDate
            TxtValor1.Text = dtpFecha1.Value
            dtpFecha1.Visible = True
            CmbCriterio1.List(0) = "Igual a"
            CmbCriterio1.List(1) = "Despues de"
            CmbCriterio1.List(2) = "Antes de"
            CmbCriterio1.List(3) = "Despues o igual a"
            CmbCriterio1.List(4) = "Antes o igual a"
            CmbCriterio1.ListIndex = 0
  End Select

End Sub

Private Sub CmbCampo2_Change()
 CmbCampo2_Click
End Sub

Private Sub CmbCampo2_Click()
  Dim i As Integer
  For i = 1 To CmbCriterio2.ListCount
     CmbCriterio2.RemoveItem (0)
  Next i
  TxtValor2.Visible = True
  dtpFecha2.Visible = False
  cmbBoolean2.Visible = False
  TxtValor2.Text = ""
  Select Case CmbCampo2.ItemData(CmbCampo2.ListIndex)
        Case dbBoolean
            TxtValor2.Visible = False
            dtpFecha2.Visible = False
            cmbBoolean2.Visible = True
            CmbCriterio2.List(0) = "="
            CmbCriterio2.ListIndex = 0
        Case dbByte, dbInteger, dbLong, dbCurrency, dbSingle, dbDouble
            CmbCriterio2.List(0) = "="
            CmbCriterio2.List(1) = ">"
            CmbCriterio2.List(2) = "<"
            CmbCriterio2.List(3) = "<>"
            CmbCriterio2.ListIndex = 0
        Case dbText
            CmbCriterio2.List(0) = "Contiene"
            CmbCriterio2.List(1) = "="
            CmbCriterio2.List(2) = ">"
            CmbCriterio2.List(3) = "<"
            CmbCriterio2.List(4) = "<>"
            CmbCriterio2.ListIndex = 0
        Case dbDate
            TxtValor2.Visible = False
            dtpFecha2.Value = getDate
            TxtValor2.Text = dtpFecha2.Value
            dtpFecha2.Visible = True
            CmbCriterio2.List(0) = "Igual a"
            CmbCriterio2.List(1) = "Despues de"
            CmbCriterio2.List(2) = "Antes de"
            CmbCriterio2.List(3) = "Despues o igual a"
            CmbCriterio2.List(4) = "Antes o igual a"
            CmbCriterio2.ListIndex = 0
  End Select

End Sub



Private Sub CmdBuscar_Click()
Dim nombre As String
    Construya
    For Each Formita In Forms
      If Formita.Name = Me.Tag Then Call Formita.Busque(Criterio, countCriterio)
    Next Formita
    CmdQuitar.Enabled = True
End Sub

Private Sub cmdCerrar_Click()
 
 'For Each Formita In Forms
  'If Formita.Name = Me.Tag Then Formita.Show
 'Next Formita
 Unload Me
End Sub

Private Sub CmdQuitar_Click()
    For Each Formita In Forms
        If Formita.Name = Me.Tag Then Call Formita.QuitarFilter
    Next Formita
    CmdQuitar.Enabled = False
End Sub

Private Sub DTPFecha1_Change()
    DTPFecha1_Click
End Sub

Private Sub DTPFecha1_Click()
    TxtValor1.Text = dtpFecha1.Value
End Sub

Private Sub DTPFecha2_Change()
    DTPFecha2_Click
End Sub

Private Sub DTPFecha2_Click()
    TxtValor2.Text = dtpFecha2.Value
End Sub

Private Sub Form_Resize()
Dim i As Integer
Dim j As Integer

    For Each Formita In Forms
        If Formita.Name = Me.Tag Then
            If Formita.ActivatedQuitar Then CmdQuitar.Enabled = True
        End If
    Next Formita
    For i = 0 To 18
        For j = 0 To 5
            Busqueda(i, j) = gBusqueda(i, j)
        Next j
    Next i
End Sub

Private Sub ValidarText(combo As ComboBox, Text As TextBox)
    
    Select Case combo.ItemData(combo.ListIndex)
 
        Case dbByte, dbInteger, dbLong, dbCurrency, dbSingle, dbDouble
             If Not IsNumeric(Text.Text) Then
                Text.Text = ""
             End If
             
    End Select
    
End Sub

Private Sub TxtValor1_Change()
     ValidarText CmbCampo1, TxtValor1
End Sub



Private Sub TxtValor1_KeyPress(KeyAscii As Integer)
    If KeyAscii = 39 Then KeyAscii = 0
    
End Sub

Private Sub TxtValor2_Change()
    ValidarText CmbCampo2, TxtValor2
End Sub

Private Sub TxtValor2_KeyPress(KeyAscii As Integer)
    If KeyAscii = 39 Then KeyAscii = 0
End Sub

