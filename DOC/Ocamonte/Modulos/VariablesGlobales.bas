Attribute VB_Name = "VariablesGlobales"
Global gFecha As Long
Global gNomFecha As String
Global gBusqueda(18, 5)
Global gUsuario As Long
Global gNameUsuario As String
Public iFactura() As Long
Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Function LeaIni(Parte As String, LLAVE As String, ARCHIVO As String) As String
Dim a As String
Dim x
    a = Space(255)
    x = GetPrivateProfileString(Parte, LLAVE, "", a, 255, ARCHIVO)
    LeaIni = Left(a, x)
End Function
Sub RestarValor(valor1 As Double, valor2 As Double)
    If valor2 > 0 Then
       If valor1 >= valor2 Then
          valor1 = Round(valor1 - valor2, 2)
          valor2 = 0
       Else
          valor2 = Round(valor2 - valor1, 2)
          valor1 = 0
       End If
    End If

End Sub
Function IsNumberNull(Valor As Variant) As Double
    If IsNull(Valor) Or Valor = "" Then IsNumberNull = 0 Else IsNumberNull = Valor
    
End Function
Function CompletarDigitoControl(strCodigo As String) As String
Dim dc As Integer
    
    
    
    dc = (Val(Mid(strCodigo, 1, 1)) + Val(Mid(strCodigo, 2, 1)) + Val(Mid(strCodigo, 3, 1)) + _
    Val(Mid(strCodigo, 4, 1)) + Val(Mid(strCodigo, 5, 1)) + Val(Mid(strCodigo, 6, 1)) + Val(Mid(strCodigo, 7, 1)) + _
    Val(Mid(strCodigo, 8, 1))) Mod 10
    
    CompletarDigitoControl = strCodigo & dc
    
    
        
End Function
Function ExisteAbono(idFactura As Long) As Boolean
Dim SQL As String
Dim r As ADODB.Recordset
    
    
    SQL = "SELECT * FROM abono WHERE id_factura=" & idFactura
    Set r = New ADODB.Recordset
    ExecuteSql r, SQL
    ExisteAbono = False
    If gError = 0 Then
       If Not r.BOF Then
          ExisteAbono = True
       End If
       r.Close
    End If
    Set r = Nothing
    
End Function
Function PonerDivisionCodigo(strCodigo As String) As String
    PonerDivisionCodigo = Mid(strCodigo, 1, 4) & "-" & Mid(strCodigo, 5, 4) & "-" & Mid(strCodigo, 9, 1)
    
End Function

Public Function SepararMiles(iValor As Double) As String
Dim strValor As String
Dim strValor2 As String
Dim iMod As Double
Dim iDiv As Double
Dim iPartes() As String
Dim iDecimal As Integer
Dim iEntero As Double
Dim i As Integer
Dim j As Integer
    strValor = str(iValor)
    iEntero = 0
    iDecimal = 0
  If Len(strValor) > 3 Then
    If InStr(1, strValor, ".", vbTextCompare) <> 0 Then
       strValor = Replace(strValor, ".", ",")
    
       iEntero = str(Mid(strValor, 1, InStr(1, strValor, ",", vbTextCompare) - 1))
       iDecimal = str(Mid(strValor, InStr(1, strValor, ",", vbTextCompare) + 1))
    Else
       iEntero = iValor
       
    End If
    If Len(Trim(str(iEntero))) > 3 Then
       strValor2 = ""
       iMod = iEntero Mod 1000
       i = 0
       ReDim Preserve iPartes(i)
        If Len(Trim(str(iMod))) = 0 Then
           iPartes(i) = "000"
        End If
        
        If Len(Trim(str(iMod))) = 1 Then
           iPartes(i) = "00" & iMod
        End If
        
        If Len(Trim(str(iMod))) = 2 Then
           iPartes(i) = "0" & iMod
        End If
        
        If Len(Trim(str(iMod))) = 3 Then
           iPartes(i) = iMod
        End If
           
        
       iDiv = iEntero \ 1000
       
       While Len(Trim(str(iDiv))) > 3
             i = i + 1
             iMod = iDiv Mod 1000
             iDiv = iDiv \ 1000
             
             ReDim Preserve iPartes(i)
             If Len(Trim(str(iMod))) = 0 Then
                iPartes(i) = "000"
             End If
        
             If Len(Trim(str(iMod))) = 1 Then
                iPartes(i) = "00" & iMod
             End If
        
             If Len(Trim(str(iMod))) = 2 Then
                iPartes(i) = "0" & iMod
             End If
        
             If Len(Trim(str(iMod))) = 3 Then
                iPartes(i) = iMod
             End If
      Wend
    Else
    ReDim Preserve iPartes(0)
    iPartes(0) = iEntero
    End If
    
    strValor2 = ""
    For j = 0 To i
        strValor2 = "." & iPartes(j) & strValor2
    Next
    If iDiv > 0 Then
       strValor2 = Trim(str(iDiv)) & strValor2
    Else
       strValor2 = Mid(strValor2, 2)
    End If
    
    If iDecimal > 0 Then
       strValor2 = strValor2 & "," & Trim(str(iDecimal))
    End If
  Else
    strValor2 = strValor
 End If
    SepararMiles = Trim(strValor2)
End Function
Sub SeekReg(Reg As ADODB.Recordset, key As Variant, ByRef iPos)
Dim bFinded As Boolean
On Error Resume Next
    bFinded = False
    Reg.MoveFirst
    iPos = 1
    While Not Reg.EOF And Not Reg.BOF And Not bFinded
        If Reg(0) = key Then
            bFinded = True
        Else
            Reg.MoveNext
            iPos = iPos + 1
        End If
    Wend
    If Not bFinded Then
        Reg.MoveFirst
        iPos = 1
    End If
End Sub

Function getLastID() As Long
Dim Reg1 As ADODB.Recordset

    Set Reg1 = New ADODB.Recordset
    ExecuteSql Reg1, "SELECT @@Identity"
    getLastID = Reg1(0)
    Reg1.Close

End Function

Sub Llene_TablaGrid(dTabla As Object, lsql As String, ByRef Reg As ADODB.Recordset, Optional strColInvisibles As String = "")
On Error GoTo bError
    gError = 0
     Screen.MousePointer = vbHourglass

     'Set Reg = New ADODB.Recordset
     Reg.CursorLocation = adUseClient
     'Reg.Open lsql, Base, adOpenDynamic, adLockReadOnly
     'Reg.Close
     Reg.Open lsql, Base, adOpenForwardOnly, adLockOptimistic
    Reg.ActiveConnection = Nothing
     Set dTabla.DataSource = Reg
     
     
     dTabla.Refresh

      Screen.MousePointer = vbDefault
Exit Sub

bError:
    gError = Err.Number
    MsgBox Err.Description & Chr(13) & lsql, vbCritical, "Servicios Públicos"
    
    
      
End Sub
Sub LlenarCombo(combo As ComboBox, SQL As String)
Dim Reg As ADODB.Recordset
Dim Contador As Integer
Dim bEncontrado As Boolean
Dim i As Integer

    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, SQL
    If gError <> 0 Then Exit Sub
    Contador = 0
    combo.Clear
    While Not Reg.EOF
        i = 0
        bEncontrado = False
'        While i < combo.ListCount And Not bEncontrado
'            If combo.List(i) = Trim(Reg("nombre")) Then
'                bEncontrado = True
'            End If
'            i = i + 1
'        Wend
        If Trim(Reg("nombre")) <> "" And Not bEncontrado Then
            combo.AddItem Trim(Reg("nombre"))
            combo.ItemData(Contador) = Reg("id")
            Contador = Contador + 1
        End If
        Reg.MoveNext
    Wend
    Reg.Close
    Set Reg = Nothing
End Sub
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
Sub UbicarCombo(combo As ComboBox, data As Integer)
Dim i As Integer
    i = 0
    If combo.ListCount = 0 Then Exit Sub
    While combo.ItemData(i) <> data And combo.ListCount > i + 1
        i = i + 1
    Wend
    If combo.ItemData(i) = data Then
        combo.ListIndex = i
    Else
        combo.ListIndex = -1
    End If
End Sub

Sub Llene_Tabla(Tabla As VSFlexGrid, borrar As Boolean, lsql As String, Optional strColInvisibles As String = "")
Dim i As Integer
Dim NReg As Integer
Dim Reg As ADODB.Recordset
Dim ColInvisibles() As String
Dim j As Integer

    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, lsql
    If gError = 0 Then
       Tabla.Cols = Reg.Fields.count + 1
       NReg = 0
       ColInvisibles = Split(strColInvisibles, ",", , vbTextCompare)
       j = 0
       For i = 1 To Reg.Fields.count
        If Tabla.ColWidth(i) <> 0 Then
            If UBound(ColInvisibles) > j - 1 Then
                If ColInvisibles(j) <> i Then
                    Tabla.TextMatrix(0, i) = Reg.Fields(i - 1).Name
                    Tabla.Row = 0
                    Tabla.Col = i
                    Tabla.CellAlignment = flexAlignCenterCenter
                    Tabla.CellFontBold = False
                Else
                    j = j + 1
                End If
            Else
                Tabla.TextMatrix(0, i) = Reg.Fields(i - 1).Name
                Tabla.Row = 0
                Tabla.Col = i
                Tabla.CellAlignment = flexAlignCenterCenter
                Tabla.CellFontBold = False
            End If
        End If
    Next i
    If borrar Then
       Tabla.Rows = 1
    Else
       NReg = Tabla.Rows - 1
    End If
    While Not Reg.EOF
        NReg = NReg + 1
        Tabla.Rows = NReg + 1
        For i = 1 To Reg.Fields.count
            Tabla.TextMatrix(NReg, i) = "" & Reg(i - 1)
        Next i
        Reg.MoveNext
    Wend
    Reg.Close
    Set Reg = Nothing
  End If
    
End Sub
Sub Llene_Tabla2(Tabla As MSFlexGrid, lsql As String, Optional strColInvisibles As String = "")
Dim i As Integer
Dim NReg As Integer
Dim Reg As ADODB.Recordset
Dim ColInvisibles() As String
Dim j As Integer

    Set Reg = New ADODB.Recordset
    ExecuteSql Reg, lsql
    If gError = 0 Then
    Tabla.Cols = Reg.Fields.count + 1
    NReg = 0
    ColInvisibles = Split(strColInvisibles, ",", , vbTextCompare)
    j = 0
    For i = 1 To Reg.Fields.count
        If Tabla.ColWidth(i) <> 0 Then
            If UBound(ColInvisibles) > j - 1 Then
                If ColInvisibles(j) <> i Then
                    Tabla.TextMatrix(0, i) = Reg.Fields(i - 1).Name
                    Tabla.Row = 0
                    Tabla.Col = i
                    Tabla.CellAlignment = flexAlignCenterCenter
                    Tabla.CellFontBold = False
                Else
                    j = j + 1
                End If
            Else
                Tabla.TextMatrix(0, i) = Reg.Fields(i - 1).Name
                Tabla.Row = 0
                Tabla.Col = i
                Tabla.CellAlignment = flexAlignCenterCenter
                Tabla.CellFontBold = False
            End If
        End If
    Next i
    Tabla.Rows = 1
    While Not Reg.EOF
        NReg = NReg + 1
        Tabla.Rows = NReg + 1
        For i = 1 To Reg.Fields.count
            Tabla.TextMatrix(NReg, i) = "" & Reg(i - 1)
        Next i
        Reg.MoveNext
    Wend
    Reg.Close
    Set Reg = Nothing
    End If
End Sub

Function getDate() As Date
Dim Fecha As Date
'init command to get the date and it's string equivalent, to compare them later
    
    getDate = Format(Date, "dd/MM/yyyy")
    
    
End Function


