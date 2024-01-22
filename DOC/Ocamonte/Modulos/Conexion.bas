Attribute VB_Name = "Conexion"
Public Base As ADODB.Connection
Public gError As Long

Sub ConectarBase()
Set Base = New ADODB.Connection
Base.Provider = "Microsoft.Jet.OLEDB.4.0"
Base.CursorLocation = adUseClient
Base.Open App.Path & "\Servicios.mdb"
End Sub


Sub ExecuteSql(Reg As ADODB.Recordset, lsql As String)
On Error GoTo bError
    gError = 0
    Screen.MousePointer = vbHourglass
    Base.CommandTimeout = 900
    Reg.Open lsql, Base, adOpenDynamic
    Screen.MousePointer = vbDefault
Exit Sub

bError:
    Screen.MousePointer = vbDefault
    gError = Err.Number
    MsgBox Err.Description & Chr(13) & lsql, vbCritical, "Servicios Públicos"
    
End Sub

Sub BaseExecute(lsql As String)
On Error GoTo bError
    gError = 0
    Screen.MousePointer = vbHourglass
    Base.CommandTimeout = 900
    Base.Execute lsql
    Screen.MousePointer = vbDefault
    Exit Sub

bError:
    Screen.MousePointer = vbDefault
    gError = Err.Number
    MsgBox Err.Description & Chr(13) & lsql, vbCritical, "Servicios Públicos"

End Sub
