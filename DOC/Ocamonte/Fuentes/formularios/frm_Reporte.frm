VERSION 5.00
Object = "{FB992564-9055-42B5-B433-FEA84CEA93C4}#11.0#0"; "crviewer.dll"
Begin VB.Form frm_Reporte 
   Caption         =   "Form1"
   ClientHeight    =   7455
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10185
   Icon            =   "frm_Reporte.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7455
   ScaleWidth      =   10185
   StartUpPosition =   3  'Windows Default
   Begin CrystalActiveXReportViewerLib11Ctl.CrystalActiveXReportViewer crViewer 
      Height          =   7185
      Left            =   150
      TabIndex        =   0
      Top             =   90
      Width           =   9855
      _cx             =   17383
      _cy             =   12674
      DisplayGroupTree=   -1  'True
      DisplayToolbar  =   -1  'True
      EnableGroupTree =   -1  'True
      EnableNavigationControls=   -1  'True
      EnableStopButton=   -1  'True
      EnablePrintButton=   -1  'True
      EnableZoomControl=   -1  'True
      EnableCloseButton=   -1  'True
      EnableProgressControl=   0   'False
      EnableSearchControl=   -1  'True
      EnableRefreshButton=   -1  'True
      EnableDrillDown =   -1  'True
      EnableAnimationControl=   -1  'True
      EnableSelectExpertButton=   0   'False
      EnableToolbar   =   -1  'True
      DisplayBorder   =   -1  'True
      DisplayTabs     =   -1  'True
      DisplayBackgroundEdge=   -1  'True
      SelectionFormula=   ""
      EnablePopupMenu =   -1  'True
      EnableExportButton=   -1  'True
      EnableSearchExpertButton=   0   'False
      EnableHelpButton=   0   'False
      LaunchHTTPHyperlinksInNewBrowser=   -1  'True
      EnableLogonPrompts=   -1  'True
      LocaleID        =   9226
   End
End
Attribute VB_Name = "frm_Reporte"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim m_Proj As CRAXDDRT.Application               ' Create a new COM instance of the Crystal Reports
Public m_Report As CRAXDDRT.Report        ' The dynamically generated report

Private Sub Form_Resize()
    On Error Resume Next
    crViewer.Width = Me.Width - 300
    crViewer.Height = Me.Height - 500
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set m_Report = Nothing
End Sub



Public Sub UpdateReport(lsql As String, lFilter As String, strFileName As String, bLocation As Boolean, Optional strTitle As String = "", Optional bEnableGroupTree As Boolean = True)
 Dim m_Connection As ADODB.Connection
 Dim Tablas As CRAXDRT.DatabaseTable

 Dim Propiedades As CRAXDRT.ConnectionProperties
  Dim str As String
  On Error Resume Next
    Set m_Proj = New CRAXDDRT.Application
    Set m_Report = New CRAXDDRT.Report
    Set m_Report = m_Proj.OpenReport(App.Path & "\Informes\" & strFileName)
      
     'm_Report.Database.LogOnServerEx "p2soledb.dll", "", "", "", "", "OLE DB", Base.ConnectionString
     Screen.MousePointer = vbHourglass
    For Each Tablas In m_Report.Database.Tables
        Set Propiedades = Tablas.ConnectionProperties
        
        Propiedades.DeleteAll
        Propiedades.Add "Provider", "Microsoft.Jet.OLEDB.4.0"
        Propiedades.Add "Initial Catalog", ""
        Propiedades.Add "Data Source", App.Path & "\Servicios.mdb"
        Propiedades.Add "User ID", ""
        Propiedades.Add "Password", ""
        Propiedades.Add "Database Type", "Access"
        If bLocation Then Tablas.Location = App.Path & "\Servicios.mdb"
        
        'Propiedades.Add "Server", ""
    Next
    'Set Tablas = Nothing
    Dim i As Integer
    For i = 1 To Propiedades.count - 1
        str = Propiedades.Item("Data Source")
    Next
  'm_Report.Database.SetDataSource Reg
   
    On Error GoTo lblError
    strSQL = lsql
    If lFilter <> "" Then strSQL = strSQL & " WHERE " & lFilter

    If strSQL <> "" Then m_Report.SQLQueryString = strSQL
    
    If strTitle <> "" Then
        m_Report.ReportTitle = strTitle
    End If
    Me.Caption = m_Report.ReportTitle
    Do While crViewer.IsBusy
       DoEvents
    Loop
   crViewer.ReportSource = m_Report          ' other code modules can enable and disable it
    crViewer.EnableGroupTree = bEnableGroupTree
   ' CrysReporte.Zoom 75
    m_Report.ReadRecords
    crViewer.Refresh                                                     ' If you're going to print the report, you should change the papersize to letter
    crViewer.ViewReport
     Screen.MousePointer = vbDefault
    Exit Sub
    
lblError:
    Screen.MousePointer = vbDefault
    MsgBox err.Description

 End Sub
Public Sub UpdateReportReg(Reg As ADODB.Recordset, lsql As String, lFilter As String, strFileName As String, Optional strTitle As String = "", Optional bEnableGroupTree As Boolean = True)
 Dim m_Connection As ADODB.Connection
 Dim Tablas As CRAXDRT.DatabaseTable
 Dim Propiedades As CRAXDRT.ConnectionProperties
  
    Set m_Proj = New CRAXDDRT.Application
    Set m_Report = New CRAXDDRT.Report
    Set m_Report = m_Proj.OpenReport(App.Path & "\Informes\" & strFileName)
   
     'm_Report.Database.LogOnServerEx "p2soledb.dll", "", "", "", "", "OLE DB", Base.ConnectionString
     Screen.MousePointer = vbHourglass
    For Each Tablas In m_Report.Database.Tables
        Set Propiedades = Tablas.ConnectionProperties
        Propiedades.DeleteAll
        Propiedades.Add "Provider", "Microsoft.Jet.OLEDB.4.0"
        Propiedades.Add "Initial Catalog", ""
        Propiedades.Add "Data Source", App.Path & "\Servicios.mdb"
       Propiedades.Add "User ID", ""
        Propiedades.Add "Password", ""
        Propiedades.Add "Database Type", "Access"
        'Propiedades.Add "Server", ""
    Next

    Do While crViewer.IsBusy
       DoEvents
    Loop
  'm_Report.Database.SetDataSource Reg
    
    On Error GoTo lblError
    strSQL = lsql
    If lFilter <> "" Then strSQL = strSQL & " WHERE " & lFilter

    
    m_Report.SQLQueryString = strSQL
    If strTitle <> "" Then
        m_Report.ReportTitle = strTitle
    End If
    Me.Caption = m_Report.ReportTitle
   
    crViewer.ReportSource = m_Report          ' other code modules can enable and disable it
    crViewer.EnableGroupTree = bEnableGroupTree
   ' CrysReporte.Zoom 75
    m_Report.ReadRecords

    crViewer.Refresh                                                     ' If you're going to print the report, you should change the papersize to letter
    crViewer.ViewReport
     Screen.MousePointer = vbDefault
    Exit Sub
    
lblError:
    Screen.MousePointer = vbDefault
    MsgBox err.Description

 End Sub
