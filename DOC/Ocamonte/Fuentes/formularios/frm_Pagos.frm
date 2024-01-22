VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frm_Pagos 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Pagos"
   ClientHeight    =   2760
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2685
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2760
   ScaleWidth      =   2685
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Height          =   555
      Left            =   60
      TabIndex        =   2
      Top             =   2160
      Width           =   2565
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Cerrar"
         Height          =   315
         Left            =   540
         TabIndex        =   3
         Top             =   180
         Width           =   1425
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2055
      Left            =   90
      TabIndex        =   1
      Top             =   60
      Width           =   2535
      Begin VB.ComboBox cmbEntidad 
         Height          =   315
         Left            =   150
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   990
         Width           =   2175
      End
      Begin VB.TextBox txtsistema 
         Height          =   315
         Left            =   150
         TabIndex        =   0
         Top             =   1560
         Width           =   1725
      End
      Begin MSComCtl2.DTPicker dtpFecha 
         Height          =   315
         Left            =   150
         TabIndex        =   4
         Top             =   390
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   556
         _Version        =   393216
         Format          =   21102593
         CurrentDate     =   38728
      End
      Begin VB.Label Label3 
         Caption         =   "Entidad"
         Height          =   195
         Left            =   150
         TabIndex        =   7
         Top             =   810
         Width           =   675
      End
      Begin VB.Label Label2 
         Caption         =   "Sistema"
         Height          =   225
         Left            =   150
         TabIndex        =   6
         Top             =   1350
         Width           =   765
      End
      Begin VB.Label Label1 
         Caption         =   "Fecha"
         Height          =   255
         Left            =   150
         TabIndex        =   5
         Top             =   210
         Width           =   585
      End
   End
End
Attribute VB_Name = "frm_Pagos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SQL As String
Dim Reg As ADODB.Recordset
Dim idSuscriptor As Long

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    dtpFecha.Value = getDate
    SQL = "SELECT * FROM entidad "
    LlenarCombo cmbEntidad, SQL
    If cmbEntidad.ListCount > 0 Then cmbEntidad.ListIndex = 0
End Sub

Private Sub txtsistema_KeyPress(KeyAscii As Integer)
Dim R1 As ADODB.Recordset

    If KeyAscii = 13 Then
    
       SQL = "SELECT facturacion.id FROM " _
       & " suscriptor,detalle_facturacion," _
       & " facturacion WHERE " _
       & " detalle_facturacion.id_factura=facturacion.id " _
       & " AND facturacion.id_fecha=" & gFecha & "  " _
       & " AND detalle_facturacion.id_suscriptor=suscriptor.id AND " _
       & " suscriptor.sistema=" & Val(txtsistema.Text)
       Set Reg = New ADODB.Recordset
       ExecuteSql Reg, SQL
       If gError = 0 Then
          If Not Reg.BOF Then
             If Not ExisteAbono(Reg("id")) Then
                SQL = "UPDATE facturacion " _
                & " set pagada=true," _
                & " id_entidad=" & cmbEntidad.ItemData(cmbEntidad.ListIndex) & ", " _
                & " fecha_pagada='" & dtpFecha.Value & "' WHERE " _
                & " id=" & Reg(0)
                BaseExecute SQL
                txtsistema.Text = ""
             Else
                MsgBox "Existe un Abono a este Suscriptor", vbCritical
             End If
          Else
             MsgBox "No existe la factura"
          End If
          Reg.Close
          Set Reg = Nothing
       End If
    
    End If
End Sub
