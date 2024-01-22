VERSION 5.00
Begin VB.Form frm_ModificarLecturas 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   2940
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   5865
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2940
   ScaleWidth      =   5865
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame fraLecturas 
      Height          =   555
      Left            =   120
      TabIndex        =   9
      Top             =   2310
      Width           =   5685
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
         Height          =   315
         Left            =   4020
         TabIndex        =   19
         Top             =   180
         Width           =   1455
      End
      Begin VB.CommandButton cmdAplicar 
         Caption         =   "Aplicar"
         Height          =   345
         Left            =   180
         TabIndex        =   10
         Top             =   150
         Width           =   1455
      End
   End
   Begin VB.Frame fraModificar 
      Height          =   2205
      Left            =   120
      TabIndex        =   8
      Top             =   60
      Width           =   5685
      Begin VB.TextBox txtUno 
         Height          =   330
         Left            =   3840
         TabIndex        =   7
         Top             =   1710
         Width           =   1665
      End
      Begin VB.TextBox txtDos 
         Height          =   330
         Left            =   2040
         TabIndex        =   6
         Top             =   1680
         Width           =   1665
      End
      Begin VB.TextBox txtTres 
         Height          =   330
         Left            =   150
         TabIndex        =   5
         Top             =   1680
         Width           =   1665
      End
      Begin VB.TextBox txtCuatro 
         Height          =   330
         Left            =   3840
         TabIndex        =   4
         Top             =   1080
         Width           =   1665
      End
      Begin VB.TextBox txtCinco 
         Height          =   330
         Left            =   2040
         TabIndex        =   3
         Top             =   1080
         Width           =   1665
      End
      Begin VB.TextBox txtSeis 
         Height          =   330
         Left            =   150
         TabIndex        =   2
         Top             =   1080
         Width           =   1665
      End
      Begin VB.TextBox txtAnterior 
         Height          =   330
         Left            =   3030
         TabIndex        =   1
         Top             =   420
         Width           =   1665
      End
      Begin VB.TextBox txtActual 
         Height          =   330
         Left            =   120
         TabIndex        =   0
         Top             =   420
         Width           =   1665
      End
      Begin VB.Label lblUno 
         Caption         =   "Lectura Uno"
         Height          =   255
         Left            =   3840
         TabIndex        =   18
         Top             =   1500
         Width           =   1155
      End
      Begin VB.Label lblDos 
         Caption         =   "Lectura Dos"
         Height          =   255
         Left            =   2040
         TabIndex        =   17
         Top             =   1470
         Width           =   1155
      End
      Begin VB.Label lblTres 
         Caption         =   "Lectura Tres"
         Height          =   255
         Left            =   150
         TabIndex        =   16
         Top             =   1470
         Width           =   1155
      End
      Begin VB.Label lblCuatro 
         Caption         =   "Lectura Cuatro"
         Height          =   255
         Left            =   3840
         TabIndex        =   15
         Top             =   870
         Width           =   1155
      End
      Begin VB.Label lblCinco 
         Caption         =   "Lectura Cinco"
         Height          =   255
         Left            =   2040
         TabIndex        =   14
         Top             =   870
         Width           =   1155
      End
      Begin VB.Label lblSeis 
         Caption         =   "Lectura Seis"
         Height          =   255
         Left            =   150
         TabIndex        =   13
         Top             =   870
         Width           =   1155
      End
      Begin VB.Label lblAnterior 
         Caption         =   "Lectura Anterior"
         Height          =   255
         Left            =   3030
         TabIndex        =   12
         Top             =   210
         Width           =   1155
      End
      Begin VB.Label LblActual 
         Caption         =   "Lectura Actual"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   210
         Width           =   1155
      End
   End
End
Attribute VB_Name = "frm_ModificarLecturas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public iSistema As Long
Dim SQL As String


Private Sub MostrarLecturas()
Dim Reg As ADODB.Recordset

    SQL = "SELECT * FROM suscriptor " _
    & " WHERE sistema=" & iSistema
    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError = 0 Then
       If Not Reg.BOF Then
          txtActual.Text = Reg("lecturaTemp")
          txtAnterior.Text = Reg("lecturaAnterior")
          txtSeis.Text = Reg("lectura6")
          txtCinco.Text = Reg("lectura5")
          txtCuatro.Text = Reg("lectura4")
          txtTres.Text = Reg("lectura3")
          txtDos.Text = Reg("lectura2")
          txtUno.Text = Reg("lectura1")
       End If
       Reg.Close
       Set Reg = Nothing
    End If
End Sub

Private Sub cmdAplicar_Click()
Dim iLongitud As Integer
Dim iPotencial As Currency
Dim iResto As Integer
Dim iConsumo As Long
Dim lSql As String
Dim iLecturaActual As Long
Dim iLecturaAnterior As Long
 
 
     iLecturaActual = Val(txtActual.Text)
     iLecturaAnterior = Val(txtAnterior.Text)
     If iLecturaActual < 100 And Len(txtAnterior.Text) > 2 Then
        iLongitud = Len(iLecturaAnterior)
        iPotencial = Exp(iLongitud * Log(10))
        iResto = iPotencial - iLecturaAnterior
        iConsumo = iLecturaActual + iResto
      Else
        If iLecturaAnterior <= iLecturaActual Then
           iConsumo = iLecturaActual - iLecturaAnterior
          Else
           MsgBox "La Lectura Actual es  menor que la Anterior", vbCritical
           Exit Sub
        End If
     End If
     lSql = "UPDATE suscriptor SET " _
      & " lecturatemp=" & iLecturaActual & "," _
      & " lecturaactual=" & iLecturaActual & "," _
      & " lecturaanterior=" & iLecturaAnterior & "," _
      & " consumoactual=" & iConsumo & " " _
      & " WHERE sistema=" & iSistema
      BaseExecute lSql
      MsgBox "Actualizado", vbInformation
        
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    
    MostrarLecturas

    
End Sub

Private Sub txtActual_KeyPress(KeyAscii As Integer)
    
       If Not ValidarNumero(KeyAscii) Then
          MsgBox "Solo Números"
          KeyAscii = 0
          Exit Sub
       End If

End Sub

Private Sub txtAnterior_KeyPress(KeyAscii As Integer)

     If Not ValidarNumero(KeyAscii) Then
          MsgBox "Solo Números"
          KeyAscii = 0
          Exit Sub
       End If
       
End Sub

Private Sub txtCinco_KeyPress(KeyAscii As Integer)
 If Not ValidarNumero(KeyAscii) Then
          MsgBox "Solo Números"
          KeyAscii = 0
          Exit Sub
       End If
End Sub

Private Sub txtCuatro_KeyPress(KeyAscii As Integer)
 If Not ValidarNumero(KeyAscii) Then
          MsgBox "Solo Números"
          KeyAscii = 0
          Exit Sub
       End If
End Sub

Private Sub txtDos_KeyPress(KeyAscii As Integer)
 If Not ValidarNumero(KeyAscii) Then
          MsgBox "Solo Números"
          KeyAscii = 0
          Exit Sub
       End If
End Sub

Private Sub txtSeis_KeyPress(KeyAscii As Integer)
    
     If Not ValidarNumero(KeyAscii) Then
        MsgBox "Solo Números"
        KeyAscii = 0
        Exit Sub
     End If
    
End Sub

Private Sub txtTres_KeyPress(KeyAscii As Integer)
 If Not ValidarNumero(KeyAscii) Then
          MsgBox "Solo Números"
          KeyAscii = 0
          Exit Sub
       End If
End Sub

Private Sub txtUno_KeyPress(KeyAscii As Integer)
 If Not ValidarNumero(KeyAscii) Then
          MsgBox "Solo Números"
          KeyAscii = 0
          Exit Sub
       End If
End Sub
