Attribute VB_Name = "CambiarRegional"
'-----modulo-----
'En el inicio del programa colocar "Call CambiarCR", de esta manera
'cambiara la configuración regional para la utilizacion en el programa

Option Explicit

Declare Function SetLocaleInfo Lib "kernel32" Alias "SetLocaleInfoA" (ByVal Locale As Long, ByVal LCType As Long, ByVal lpLCData As String) As Long
Declare Function GetLocaleInfo Lib "kernel32" Alias "GetLocaleInfoA" (ByVal Locale As Long, ByVal LCType As Long, ByVal lpLCData As String, ByVal cchData As Long) As Long

Type NUMBERFMT
NumDigits As Long ' número de dígitos decimales
LeadingZero As Long ' si hay ceros iniciales en los campos decimales
Grouping As Long ' tamaño del grupo a la izquierda del decimal
lpDecimalSep As String ' puntero a la cadena del separador de decimales
lpThousandSep As String ' puntero a la cadena del separador de miles
NegativeOrder As Long ' orden de números negativos
End Type


Declare Function GetNumberFormat Lib "kernel32" Alias "GetNumberFormatA" (ByVal Locale As Long, ByVal dwFlags As Long, ByVal lpValue As String, lpFormat As NUMBERFMT, ByVal lpNumberStr As String, ByVal cchNumber As Long) As Long

Public Const LOCAL_DEFAULT = &H2C0A
Public Const LOCALE_SDECIMAL = &HE
Public Const LOCALE_STHOUSAND = &HF
Public Const LOCALE_IDIGITS = &H11
Public Const LOCALE_STIMEFORMAT = &H1003
Public Const LOCALE_SSHORTDATE = &H1F
Public Const LOCALE_SLONGDATE = &H20
Public Const LOCALE_SCURRENCY = &H14
Public Const LOCALE_SMONDECIMALSEP = &H16
Public Const LOCALE_SMONTHOUSANDSEP = &H17

Public Const FMT_FECHA_CORTA As String = "dd/MM/yyyy"
Public Const FMT_FECHA_LARGA As String = "dddd, d' de 'MMMM' de 'yyyy"
Public Const FMT_HORA As String = "HH:mm:ss"
Public Const SIMB_MONEDA As String = "$"
Public Const SEP_DEC As String = "."
Public Const SEP_MILES As String = ","

Public Function CambiarCR(Optional strError As String) As Boolean
    Dim lngResu As Long
    Dim buffer As String * 255
    
    On Error GoTo Errores
    
   ' lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_SSHORTDATE, FMT_FECHA_CORTA)
    'If lngResu = 0 Then strError = "Error al setear fecha corta."
    
    'lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_SLONGDATE, FMT_FECHA_LARGA)
   ' If lngResu = 0 Then strError = "Error al setear fecha larga."
    
    lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_SDECIMAL, SEP_DEC)
    If lngResu = 0 Then strError = "Error al setear separador de decimales."
    
    lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_STHOUSAND, SEP_DEC)
    If lngResu = 0 Then strError = "Error al setear separador de miles."
    
    lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_STIMEFORMAT, FMT_HORA)
    If lngResu = 0 Then strError = "Error al setear formato de hora."
    
    lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_SMONDECIMALSEP, SEP_DEC)
    If lngResu = 0 Then strError = "Error al setear separador de decimales de moneda."
    
   ' lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_SMONTHOUSANDSEP, SEP_MILES)
   ' If lngResu = 0 Then strError = "Error al setear separador de miles de moneda."
    
   ' lngResu = SetLocaleInfo(LOCAL_DEFAULT, LOCALE_SCURRENCY, SIMB_MONEDA)
   ' If lngResu = 0 Then strError = "Error al setear símbolo de moneda."
    
    lngResu = GetLocaleInfo(LOCAL_DEFAULT, LOCALE_SDECIMAL, buffer, Len(buffer))
    If Left$(buffer, 1) = SEP_DEC Then
    lngResu = GetLocaleInfo(LOCAL_DEFAULT, LOCALE_SMONDECIMALSEP, buffer, Len(buffer))
    If Left$(buffer, 1) = SEP_DEC Then
    lngResu = GetLocaleInfo(LOCAL_DEFAULT, LOCALE_STHOUSAND, buffer, Len(buffer))
    If Left$(buffer, 1) = SEP_MILES Then
    lngResu = GetLocaleInfo(LOCAL_DEFAULT, LOCALE_SMONTHOUSANDSEP, buffer, Len(buffer))
    If Left$(buffer, 1) = SEP_MILES Then
    CambiarCR = (strError = vbNullString)
    End If
    End If
    End If
    End If
    
    Exit Function
Errores:
    CambiarCR = False
End Function



