VERSION 5.00
Begin VB.UserControl TxtEditMultiline 
   ClientHeight    =   405
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1575
   MaskPicture     =   "TxtEdit.ctx":0000
   PropertyPages   =   "TxtEdit.ctx":5C12
   ScaleHeight     =   405
   ScaleWidth      =   1575
   ToolboxBitmap   =   "TxtEdit.ctx":5C26
   Begin VB.TextBox TxtTexto 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   0
      TabIndex        =   0
      Top             =   30
      Width           =   1530
   End
End
Attribute VB_Name = "TxtEditMultiline"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "PropPageWizardRun" ,"Yes"
Dim TypeNumeric As Boolean


Public Property Let Enabled(bEnabled As Boolean)
    TxtTexto.Enabled = bEnabled
End Property

Public Property Get Enabled() As Boolean
    Enabled = TxtTexto.Enabled
End Property

Public Property Let MaxLength(iCant As Integer)
    TxtTexto.MaxLength = iCant
End Property

Public Property Get MaxLength() As Integer
    MaxLength = TxtTexto.MaxLength
End Property
Public Property Let Locked(bLocked As Boolean)
    TxtTexto.Locked = bLocked
End Property

Public Property Get Locked() As Boolean
    Locked = TxtTexto.Locked
End Property

Public Property Let PasswordCharacter(ByVal strChar As String)
    TxtTexto.PasswordChar = String(1, strChar)
    'PropertyChanged "PasswordCharacter"
End Property

Public Property Get PasswordCharacter() As String
    PasswordCharacter = TxtTexto.PasswordChar
End Property

Public Property Let Text(strTexto As String)
    TxtTexto.Text = Trim(strTexto)
End Property

Public Property Get Text() As String
    Text = TxtTexto.Text
End Property

Public Property Let IsNumeric(bNumeric As Boolean)
    TypeNumeric = bNumeric
End Property

Public Property Get IsNumeric() As Boolean
    IsNumeric = TypeNumeric
End Property


Private Sub TxtTexto_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        SendKeys "{TAB}"
        Exit Sub
    End If
    If IsNumeric Then
        If Not ValidarNumero(KeyAscii) Then
            KeyAscii = 0
        End If
      Else
        If ValidarTexto(KeyAscii) Then
           KeyAscii = 0
        End If
    End If
End Sub

Function ValidarTexto(Valor) As Boolean
    ValidarTexto = True
    Select Case Valor
        Case 39
        Case Else
        ValidarTexto = False
    End Select
End Function


Function ValidarNumero(Numero) As Boolean
    ValidarNumero = True
    Select Case Numero
        Case 46
        Case 48 To 57
        Case 8
        Case 13
        Case Else
        ValidarNumero = False
    End Select
End Function


Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
On Error Resume Next
    Let MaxLength = PropBag.ReadProperty("MaxLength", 0)
    Let Enabled = PropBag.ReadProperty("Enabled", True)
    Let Locked = PropBag.ReadProperty("Locked", False)
    Let Text = PropBag.ReadProperty("Text", "Texto")
    Let IsNumeric = PropBag.ReadProperty("IsNumeric", False)
    Let PasswordCharacter = PropBag.ReadProperty("PasswordCharacter", "")
    On Error GoTo 0
End Sub

Private Sub UserControl_Resize()
    TxtTexto.Width = UserControl.Width
    TxtTexto.Height = UserControl.Height
 
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag)

    On Error Resume Next
    Call PropBag.WriteProperty("MaxLength", MaxLength)
    Call PropBag.WriteProperty("Enabled", Enabled)
    Call PropBag.WriteProperty("Locked", Locked)
    Call PropBag.WriteProperty("PasswordCharacter", PasswordCharacter)
    Call PropBag.WriteProperty("Text", Text)
    Call PropBag.WriteProperty("IsNumeric", IsNumeric)
    On Error GoTo 0
    
End Sub

