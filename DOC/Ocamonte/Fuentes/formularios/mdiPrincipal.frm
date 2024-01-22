VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.MDIForm mdiPrincipal 
   BackColor       =   &H8000000C&
   Caption         =   "Servicios Públicos"
   ClientHeight    =   7950
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   9900
   Icon            =   "mdiPrincipal.frx":0000
   LinkTopic       =   "MDIForm1"
   Picture         =   "mdiPrincipal.frx":0442
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin MSComDlg.CommonDialog cmDir 
      Left            =   2730
      Top             =   2520
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
      DefaultExt      =   "*.mdb"
      Filter          =   "*.mdb"
   End
   Begin MSComctlLib.StatusBar stBarra 
      Align           =   2  'Align Bottom
      Height          =   315
      Left            =   0
      TabIndex        =   0
      Top             =   7635
      Width           =   9900
      _ExtentX        =   17463
      _ExtentY        =   556
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   4410
            MinWidth        =   4410
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin VB.Menu priMantenimiento 
      Caption         =   "Mantenimiento"
      Begin VB.Menu mnuSuscriptor 
         Caption         =   "Suscriptores"
      End
      Begin VB.Menu mnuUso 
         Caption         =   "Usos"
      End
      Begin VB.Menu mnuEntidad 
         Caption         =   "Entidades"
      End
      Begin VB.Menu mnuLector 
         Caption         =   "Lectores"
      End
      Begin VB.Menu mnuDeuda1 
         Caption         =   "Deudas"
      End
      Begin VB.Menu MnuMensaje 
         Caption         =   "Mensajes"
      End
   End
   Begin VB.Menu PriNovedaes 
      Caption         =   "Novedades"
      Begin VB.Menu SeLecturas 
         Caption         =   "Lecturas"
         Begin VB.Menu MnuPrecritica 
            Caption         =   "Precríticas"
         End
         Begin VB.Menu MnuConsultar 
            Caption         =   "Consultar"
         End
      End
      Begin VB.Menu mnuDeuda 
         Caption         =   "Deudas"
      End
   End
   Begin VB.Menu PriListados 
      Caption         =   "Listados"
      Begin VB.Menu mnuAbonos 
         Caption         =   "Abonos"
      End
      Begin VB.Menu mnuPagosDias 
         Caption         =   "Pagos"
      End
      Begin VB.Menu mnuNoPagos 
         Caption         =   "No Pagos"
      End
      Begin VB.Menu mnuCalidadLecturas 
         Caption         =   "Calidad Lecturas"
      End
      Begin VB.Menu mnuListadoPrecritica 
         Caption         =   "Listado Precrítica"
      End
      Begin VB.Menu mnuSubsidios 
         Caption         =   "Susbsidios"
      End
      Begin VB.Menu mnuSuscriptorres 
         Caption         =   "Suscriptores"
      End
      Begin VB.Menu mnuLiquidacion 
         Caption         =   "Liquidación"
      End
      Begin VB.Menu mnuRecaudo 
         Caption         =   "Recaudos"
      End
      Begin VB.Menu mnuCartera 
         Caption         =   "Cartera"
      End
      Begin VB.Menu mnuTarifas 
         Caption         =   "Tarifas"
      End
   End
   Begin VB.Menu PriLiquidacionPagos 
      Caption         =   "Procesos Mensuales"
      Begin VB.Menu MnuLiquidar 
         Caption         =   "Liquidar"
      End
      Begin VB.Menu mnuAbono 
         Caption         =   "Abonos"
      End
      Begin VB.Menu PriPago 
         Caption         =   "Pagos"
         Begin VB.Menu mnuPago 
            Caption         =   "Hacer Pagos"
         End
         Begin VB.Menu mnuConsultaPagos 
            Caption         =   "Consulta Pagos"
         End
      End
      Begin VB.Menu mnuCredito 
         Caption         =   "Crédito"
      End
      Begin VB.Menu mnuDebito 
         Caption         =   "Débito"
      End
   End
   Begin VB.Menu mnuAdministrar 
      Caption         =   "Administrar"
      Begin VB.Menu mnuUsuario 
         Caption         =   "Usuarios"
      End
      Begin VB.Menu mnuCambiarClave 
         Caption         =   "Cambiar Clave"
      End
      Begin VB.Menu mnuRecuperarBase 
         Caption         =   "Recuperar Base"
      End
   End
End
Attribute VB_Name = "mdiPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SQL As String
Dim idFecha As Integer
Private Sub MDIForm_Load()
Dim Reg As ADODB.Recordset
Dim strVersion As String
'Dim m_Deuda() As Double
'    Dim i As Integer
'     ReDim Preserve m_Deuda(1, 2) As Double
'   m_Deuda(0, 0) = -1
'   m_Deuda(0, 1) = -1
'   m_Deuda(0, 2) = -1
   
   'i = UBound(m_Deuda, 1)
    'ConectarBase
    
    
  
    Set Reg = New ADODB.Recordset
    SQL = "SELECT Max(fecha),Max(id) FROM fecha"
    ExecuteSql Reg, SQL
    gNomFecha = Reg(0)
    If gError = 0 Then
       If Not Reg.BOF Then
          stBarra.Panels(1).Text = UCase(Format(Reg(0), "mmmm yyyy"))
          gFecha = Reg(1)
          gNomFecha = UCase(Format(Reg(0), "mmmm yyyy"))
          stBarra.Panels(2).Text = gNameUsuario
       End If
       Reg.Close
    End If
    Set Reg = Nothing
End Sub

Private Sub MDIForm_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  CambiarCR
End Sub

Private Sub mnuAbono_Click()
    Load frm_Abonos
    frm_Abonos.Show 0, Me
End Sub

Private Sub mnuAbonos_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
      Screen.MousePointer = vbHourglass
    lsql = " SELECT MaxFecha.id_fecha, suscriptor.sistema, abono.valor," _
    & " fecha.fecha  FROM ((abono INNER JOIN MaxFecha ON " _
    & " abono.id_fecha=MaxFecha.id_fecha) INNER JOIN ((detalle_facturacion " _
    & " INNER JOIN facturacion ON detalle_facturacion.id_factura=facturacion.id) " _
    & " INNER JOIN suscriptor ON detalle_facturacion.id_suscriptor=suscriptor.id) " _
    & " ON abono.id_factura=facturacion.id) INNER JOIN fecha ON " _
    & " MaxFecha.id_fecha=fecha.id "
     SQL = ""
     Report.UpdateReport SQL, "", "RptAbonos.rpt", False, "", False
     Report.Show
     Screen.MousePointer = vbDefault
End Sub

Private Sub mnuCalidadLecturas_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
               
    SQL = "SELECT suscriptor.sistema,suscriptor.lecturaActual,NoLecturas.nombre, " _
    & " suscriptor.ConsumoActual,suscriptor.lecturaAnterior, suscriptor.Consumo6 " _
    & " FROM NoLecturas RIGHT OUTER JOIN suscriptor ON NoLecturas.id_suscriptor=suscriptor.id " _
    & " ORDER BY suscriptor.sistema "
    
               
     Report.UpdateReport SQL, "", "RptCalidaLecturas.rpt", False, "", False
     Report.Show
 


End Sub

Private Sub mnuCambiarClave_Click()
    Load frm_CambiarClave
    frm_CambiarClave.Show 0, Me
End Sub

Private Sub mnuCartera_Click()
    Load frm_Cartera
    frm_Cartera.Show 0, Me
End Sub

Private Sub mnuConsultaPagos_Click()
    Load frm_ConsultaPagos
    frm_ConsultaPagos.Show 0, Me
End Sub

Private Sub MnuConsultar_Click()
    Load frm_ConsultarLecturas
    frm_ConsultarLecturas.Show 0, Me
End Sub

Private Sub MnuModificar_Click()
    
End Sub

Private Sub mnuCredito_Click()
    Load frm_Creditos
    frm_Creditos.Show 0, Me
End Sub

Private Sub mnuDebito_Click()
    Load frm_Debitos
    frm_Debitos.Show 0, Me
End Sub

Private Sub mnuDeuda_Click()
    Load frm_Deudas
    
    frm_Deudas.Show 0, Me
    
End Sub

Private Sub mnuDeuda1_Click()
    Load frm_DeudasNuevas
    frm_DeudasNuevas.Show 0, Me
End Sub

Private Sub mnuEntidad_Click()
    Load frm_Entidad
    frm_Entidad.Show 0, Me
End Sub

Private Sub mnuLector_Click()
    Load frm_Lector
    frm_Lector.Show 0, Me
End Sub

Private Sub mnuLiquidacion_Click()
 Dim Report As frm_Reporte
 Dim lsql As String
               Set Report = New frm_Reporte
               
               lsql = "SELECT Liquidacion.lecturaActual,Liquidacion.lecturaAnterior, " _
               & " Liquidacion.ConsumoActual,Liquidacion.PromedioConsumo," _
               & " Liquidacion.ValorFijoAcueducto,Liquidacion.SubsidioFijoAcueducto," _
               & " Liquidacion.ValorAcueducto,Liquidacion.SubsidioConsumoAcueducto, " _
               & " Liquidacion.ValorAlcantarillado,Liquidacion.ValorFijoAseo, " _
               & " Liquidacion.SubsidioFijoAseo,Liquidacion.valor,Liquidacion.facturacion.total, " _
               & " Liquidacion.AnteriorFactura.total,Liquidacion.fecha_pagada, " _
               & " Liquidacion.Refacturado,Liquidacion.sistema,Liquidacion.codigo, " _
               & " Liquidacion.atraso,Liquidacion.nombre,Liquidacion.Deuda, " _
               & " Liquidacion . SubsidioAlcantarillado FROM Liquidacion"
               lsql = ""
               Report.UpdateReport lsql, "", "Rptliquidacion.rpt", True, "", False
               Report.Show
End Sub

Private Sub MnuLiquidar_Click()
    Load frm_Liquidacion
    frm_Liquidacion.Show
End Sub

Private Sub mnuListadoPrecritica_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
               
    lsql = " SELECT suscriptor.sistema,suscriptor.nombre, " _
    & " suscriptor.direccion,uso.codigo, suscriptor.lecturaActual, " _
    & " suscriptor.ConsumoActual FROM suscriptor INNER JOIN uso " _
    & " ON suscriptor.id_uso=uso.id  ORDER BY suscriptor.sistema "

               
     Report.UpdateReport SQL, "", "rptListadoPrecritica.rpt", False, "", False
     Report.Show
End Sub

Private Sub MnuMensaje_Click()
    Load frm_mensaje
    frm_mensaje.Show 0, Me
End Sub

Private Sub mnuNoPagos_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
    Screen.MousePointer = vbHourglass
    lsql = "SELECT suscriptor.sistema,suscriptor.nombre, facturacion.total, " _
    & " facturacion.pagada,suscriptor.atraso,uso.codigo, fecha.fecha, suscriptor.direccion " _
    & "  FROM (((detalle_facturacion INNER JOIN suscriptor ON " _
    & " detalle_facturacion.id_suscriptor=suscriptor.id) " _
    & " INNER JOIN facturacion ON detalle_facturacion.id_factura=facturacion.id) " _
    & " INNER JOIN (fecha INNER JOIN MaxFecha ON fecha.id=MaxFecha.id_fecha) ON " _
    & " facturacion.id_fecha=MaxFecha.id_fecha) INNER JOIN uso ON suscriptor.id_uso=uso.id " _
    & " WHERE facturacion.pagada=FALSE "
               
     Report.UpdateReport SQL, "", "Rptnopagos.rpt", False, "", False
     Report.Show
     Screen.MousePointer = vbDefault
End Sub

Private Sub mnuPago_Click()
    Load frm_Pagos
    frm_Pagos.Show 0, Me
End Sub

Private Sub mnuPagosDias_Click()
    Load frm_PagosDias
    frm_PagosDias.Show 0, Me
End Sub

Private Sub MnuPrecritica_Click()
    Load frm_lecturaPrecritica
    frm_lecturaPrecritica.Show 1
End Sub

Private Sub mnuRecaudo_Click()
'Dim R1 As ADODB.Recordset
Dim SQL As String
Dim forma As frm_Reporte
'    SQL = "DELETE FROM detalle_recaudo"
'    BaseExecute SQL
'    SQL = "SELECT sum(facturaciontotal.detalle_facturacion.valorfijoacueducto),sum(facturaciontotal.detalle_facturacion.valorbasicoacueducto)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.valorComplementarioacueducto)+sum(facturaciontotal.detalle_facturacion.valorsuntuarioacueducto)," _
'    & " sum(facturaciontotal.detalle_facturacion.ValorFijoAlcantarillado)+sum(facturaciontotal.detalle_facturacion.ValorBasicoAlcantarillado)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.valorComplementarioAlcantarillado)+sum(facturaciontotal.detalle_facturacion.ValorSuntuarioAlcantarillado)," _
'    & " sum(facturaciontotal.detalle_facturacion.ValorFijoAseo),sum(facturaciontotal.detalle_facturacion.OtroValor),sum(facturaciontotal.detalle_facturacion.SubsidioFijoAlcantarillado)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.SubsidioFijoAcueducto)+sum(facturaciontotal.detalle_facturacion.SubsidioFijoAseo)+sum(facturaciontotal.detalle_facturacion.SubsidioConsumoAcueducto)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.SubsidioConsumoAlcantarillado)+sum(facturaciontotal.detalle_facturacion.OtroSubsidio),sum(facturaciontotal.refacturado.ValorFijoAcueducto), " _
'    & " sum(facturaciontotal.refacturado.valorbasicoacueducto)+ sum(facturaciontotal.refacturado.valorComplementarioacueducto)+sum(facturaciontotal.refacturado.valorsuntuarioacueducto), " _
'    & " sum(facturaciontotal.refacturado.ValorFijoAlcantarillado)+sum(facturaciontotal.refacturado.ValorBasicoAlcantarillado)+ " _
'    & " sum(facturaciontotal.refacturado.valorComplementarioAlcantarillado)+sum(facturaciontotal.refacturado.ValorSuntuarioAlcantarillado)," _
'    & " sum(facturaciontotal.refacturado.ValorFijoAseo),sum(facturaciontotal.refacturado.OtroValor),sum(facturaciontotal.InteresMoraAcueducto)+ " _
'    & " sum(facturaciontotal.InteresMoraAlcantarillado)+sum(facturaciontotal.InteresMoraAseo)+sum(facturaciontotal.OtroInteres) FROM facturacion,facturacionTotal WHERE " _
'    & " facturacion.id=facturaciontotal.id AND facturacion.id_fecha=" & gFecha & " " _
'    & " AND facturacion.pagada=true"
'    Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'       If Not R1.BOF Then
'          SQL = "INSERT INTO detalle_recaudo (id_tipo_recaudo,ValorFijo,ValorConsumo," _
'          & " ValorAlcantarillado,ValorAseo,OtroValor,Subsidio,rValorFijo,rValorConsumo," _
'          & " rValorAlcantarillado,rValorAseo,rOtroValor,rInteresMora) " _
'          & " VALUES (3," & R1(0) & "," & R1(1) & "," & R1(2) & "," & R1(3) & "," _
'          & " " & R1(4) & "," & R1(5) & "," & R1(6) & "," & R1(7) & "," & R1(8) & "," & R1(9) & ", " _
'          & " " & R1(10) & "," & R1(11) & ")"
'          BaseExecute SQL
'       End If
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'
'    SQL = "SELECT sum(facturaciontotal.detalle_facturacion.valorfijoacueducto),sum(facturaciontotal.detalle_facturacion.valorbasicoacueducto)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.valorComplementarioacueducto)+sum(facturaciontotal.detalle_facturacion.valorsuntuarioacueducto)," _
'    & " sum(facturaciontotal.detalle_facturacion.ValorFijoAlcantarillado)+sum(facturaciontotal.detalle_facturacion.ValorBasicoAlcantarillado)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.valorComplementarioAlcantarillado)+sum(facturaciontotal.detalle_facturacion.ValorSuntuarioAlcantarillado)," _
'    & " sum(facturaciontotal.detalle_facturacion.ValorFijoAseo),sum(facturaciontotal.detalle_facturacion.OtroValor),sum(facturaciontotal.detalle_facturacion.SubsidioFijoAlcantarillado)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.SubsidioFijoAcueducto)+sum(facturaciontotal.detalle_facturacion.SubsidioFijoAseo)+sum(facturaciontotal.detalle_facturacion.SubsidioConsumoAcueducto)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.SubsidioConsumoAlcantarillado)+sum(facturaciontotal.detalle_facturacion.OtroSubsidio),sum(facturaciontotal.refacturado.ValorFijoAcueducto), " _
'    & " sum(facturaciontotal.refacturado.valorbasicoacueducto)+ sum(facturaciontotal.refacturado.valorComplementarioacueducto)+sum(facturaciontotal.refacturado.valorsuntuarioacueducto), " _
'    & " sum(facturaciontotal.refacturado.ValorFijoAlcantarillado)+sum(facturaciontotal.refacturado.ValorBasicoAlcantarillado)+ " _
'    & " sum(facturaciontotal.refacturado.valorComplementarioAlcantarillado)+sum(facturaciontotal.refacturado.ValorSuntuarioAlcantarillado)," _
'    & " sum(facturaciontotal.refacturado.ValorFijoAseo),sum(facturaciontotal.refacturado.OtroValor),sum(facturaciontotal.InteresMoraAcueducto)+ " _
'    & " sum(facturaciontotal.InteresMoraAlcantarillado)+sum(facturaciontotal.InteresMoraAseo)+sum(facturaciontotal.OtroInteres) FROM facturacion,facturacionTotal WHERE " _
'    & " facturacion.id=facturaciontotal.id AND facturacion.id_fecha=" & gFecha & " " _
'    & " AND facturacion.pagada=false"
'    Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'       If Not R1.BOF Then
'          SQL = "INSERT INTO detalle_recaudo (id_tipo_recaudo,ValorFijo,ValorConsumo," _
'          & " ValorAlcantarillado,ValorAseo,OtroValor,Subsidio,rValorFijo,rValorConsumo," _
'          & " rValorAlcantarillado,rValorAseo,rOtroValor,rInteresMora) " _
'          & " VALUES (2," & R1(0) & "," & R1(1) & "," & R1(2) & "," & R1(3) & "," _
'          & " " & R1(4) & "," & R1(5) & "," & R1(6) & "," & R1(7) & "," & R1(8) & "," & R1(9) & ", " _
'          & " " & R1(10) & "," & R1(11) & ")"
'          BaseExecute SQL
'       End If
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'
'     SQL = "SELECT sum(facturaciontotal.detalle_facturacion.valorfijoacueducto),sum(facturaciontotal.detalle_facturacion.valorbasicoacueducto)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.valorComplementarioacueducto)+sum(facturaciontotal.detalle_facturacion.valorsuntuarioacueducto)," _
'    & " sum(facturaciontotal.detalle_facturacion.ValorFijoAlcantarillado)+sum(facturaciontotal.detalle_facturacion.ValorBasicoAlcantarillado)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.valorComplementarioAlcantarillado)+sum(facturaciontotal.detalle_facturacion.ValorSuntuarioAlcantarillado)," _
'    & " sum(facturaciontotal.detalle_facturacion.ValorFijoAseo),sum(facturaciontotal.detalle_facturacion.OtroValor),sum(facturaciontotal.detalle_facturacion.SubsidioFijoAlcantarillado)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.SubsidioFijoAcueducto)+sum(facturaciontotal.detalle_facturacion.SubsidioFijoAseo)+sum(facturaciontotal.detalle_facturacion.SubsidioConsumoAcueducto)+ " _
'    & " sum(facturaciontotal.detalle_facturacion.SubsidioConsumoAlcantarillado)+sum(facturaciontotal.detalle_facturacion.OtroSubsidio),sum(facturaciontotal.refacturado.ValorFijoAcueducto), " _
'    & " sum(facturaciontotal.refacturado.valorbasicoacueducto)+ sum(facturaciontotal.refacturado.valorComplementarioacueducto)+sum(facturaciontotal.refacturado.valorsuntuarioacueducto), " _
'    & " sum(facturaciontotal.refacturado.ValorFijoAlcantarillado)+sum(facturaciontotal.refacturado.ValorBasicoAlcantarillado)+ " _
'    & " sum(facturaciontotal.refacturado.valorComplementarioAlcantarillado)+sum(facturaciontotal.refacturado.ValorSuntuarioAlcantarillado)," _
'    & " sum(facturaciontotal.refacturado.ValorFijoAseo),sum(facturaciontotal.refacturado.OtroValor),sum(facturaciontotal.InteresMoraAcueducto)+ " _
'    & " sum(facturaciontotal.InteresMoraAlcantarillado)+sum(facturaciontotal.InteresMoraAseo)+sum(facturaciontotal.OtroInteres) FROM facturacion,facturacionTotal WHERE " _
'    & " facturacion.id=facturaciontotal.id AND facturacion.id_fecha=" & gFecha
'    Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'       If Not R1.BOF Then
'          SQL = "INSERT INTO detalle_recaudo (id_tipo_recaudo,ValorFijo,ValorConsumo," _
'          & " ValorAlcantarillado,ValorAseo,OtroValor,Subsidio,rValorFijo,rValorConsumo," _
'          & " rValorAlcantarillado,rValorAseo,rOtroValor,rInteresMora) " _
'          & " VALUES (1," & R1(0) & "," & R1(1) & "," & R1(2) & "," & R1(3) & "," _
'          & " " & R1(4) & "," & R1(5) & "," & R1(6) & "," & R1(7) & "," & R1(8) & "," & R1(9) & ", " _
'          & " " & R1(10) & "," & R1(11) & ")"
'          BaseExecute SQL
'       End If
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'    SQL = "DELETE FROM detalle_recaudo_deuda"
'    BaseExecute SQL
'    SQL = "SELECT sum(deuda_suscriptor.valor_cuota) AS Suma,deuda_suscriptor.id_deuda FROM detalle_facturacion,facturacion,deuda_suscriptor " _
'    & " WHERE detalle_facturacion.id_factura=facturacion.id AND deuda_suscriptor.id_suscriptor=detalle_facturacion.id_suscriptor " _
'    & " AND facturacion.id_fecha=" & gFecha & " AND facturacion.pagada=true " _
'    & " GROUP BY deuda_suscriptor.id_deuda"
'     Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'
'       While Not R1.EOF
'          SQL = "INSERT INTO detalle_recaudo_deuda (id_tipo_recaudo,id_deuda,Valor)" _
'          & " VALUES (3," & R1("id_deuda") & "," & R1("Suma") & ")"
'          BaseExecute SQL
'          R1.MoveNext
'        Wend
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'    SQL = "SELECT sum(deuda_suscriptor.valor_cuota) AS Suma,deuda_suscriptor.id_deuda FROM detalle_facturacion,facturacion,deuda_suscriptor " _
'    & " WHERE detalle_facturacion.id_factura=facturacion.id AND deuda_suscriptor.id_suscriptor=detalle_facturacion.id_suscriptor " _
'    & " AND facturacion.id_fecha=" & gFecha & " AND facturacion.pagada=false " _
'    & " GROUP BY deuda_suscriptor.id_deuda"
'     Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'
'       While Not R1.EOF
'          SQL = "INSERT INTO detalle_recaudo_deuda (id_tipo_recaudo,id_deuda,Valor)" _
'          & " VALUES (2," & R1("id_deuda") & "," & R1("Suma") & ")"
'          BaseExecute SQL
'          R1.MoveNext
'        Wend
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'    SQL = "SELECT sum(deuda_suscriptor.valor_cuota) AS Suma,deuda_suscriptor.id_deuda FROM detalle_facturacion,facturacion,deuda_suscriptor " _
'    & " WHERE detalle_facturacion.id_factura=facturacion.id AND deuda_suscriptor.id_suscriptor=detalle_facturacion.id_suscriptor " _
'    & " AND facturacion.id_fecha=" & gFecha & " " _
'    & " GROUP BY deuda_suscriptor.id_deuda"
'     Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'
'       While Not R1.EOF
'          SQL = "INSERT INTO detalle_recaudo_deuda (id_tipo_recaudo,id_deuda,Valor)" _
'          & " VALUES (1," & R1("id_deuda") & "," & R1("Suma") & ")"
'          BaseExecute SQL
'          R1.MoveNext
'        Wend
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'     SQL = "DELETE FROM recaudo_deuda_refacturado"
'       BaseExecute SQL
'
'    SQL = "SELECT sum(refacturado_deuda.valor_deuda)+sum(refacturado_deuda.interes) AS Suma,refacturado_deuda.id_deuda FROM detalle_facturacion,facturacion,refacturado_deuda " _
'    & " WHERE detalle_facturacion.id_factura=facturacion.id AND refacturado_deuda.id_suscriptor=detalle_facturacion.id_suscriptor " _
'    & " AND facturacion.id_fecha=" & gFecha & " AND facturacion.pagada=false " _
'    & " GROUP BY refacturado_deuda.id_deuda"
'     Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'
'       While Not R1.EOF
'          SQL = "INSERT INTO  recaudo_deuda_refacturado (id_tipo_recaudo,id_deuda,refacturado)" _
'          & " VALUES (2," & R1("id_deuda") & "," & R1("Suma") & ")"
'          BaseExecute SQL
'          R1.MoveNext
'        Wend
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'     SQL = "SELECT sum(refacturado_deuda.valor_deuda)+sum(refacturado_deuda.interes) AS Suma,refacturado_deuda.id_deuda FROM detalle_facturacion,facturacion,refacturado_deuda " _
'    & " WHERE detalle_facturacion.id_factura=facturacion.id AND refacturado_deuda.id_suscriptor=detalle_facturacion.id_suscriptor " _
'    & " AND facturacion.id_fecha=" & gFecha & " AND facturacion.pagada=true " _
'    & " GROUP BY refacturado_deuda.id_deuda"
'     Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'
'       While Not R1.EOF
'          SQL = "INSERT INTO  recaudo_deuda_refacturado (id_tipo_recaudo,id_deuda,refacturado)" _
'          & " VALUES (3," & R1("id_deuda") & "," & R1("Suma") & ")"
'          BaseExecute SQL
'          R1.MoveNext
'        Wend
'       R1.Close
'    End If
'    Set R1 = Nothing
'
'    SQL = "SELECT sum(refacturado_deuda.valor_deuda)+sum(refacturado_deuda.interes) AS Suma,refacturado_deuda.id_deuda FROM detalle_facturacion,facturacion,refacturado_deuda " _
'    & " WHERE detalle_facturacion.id_factura=facturacion.id AND refacturado_deuda.id_suscriptor=detalle_facturacion.id_suscriptor " _
'    & " AND facturacion.id_fecha=" & gFecha & "  " _
'    & " GROUP BY refacturado_deuda.id_deuda"
'     Set R1 = New ADODB.Recordset
'    ExecuteSql R1, SQL
'    If gError = 0 Then
'
'       While Not R1.EOF
'          SQL = "INSERT INTO  recaudo_deuda_refacturado (id_tipo_recaudo,id_deuda,refacturado)" _
'          & " VALUES (1," & R1("id_deuda") & "," & R1("Suma") & ")"
'          BaseExecute SQL
'          R1.MoveNext
'        Wend
'       R1.Close
'    End If
'    Set R1 = Nothing
'
    Set forma = New frm_Reporte
'    SQL = "SELECT detalle_recaudo.ValorFijo, detalle_recaudo.ValorConsumo," _
'    & " detalle_recaudo.ValorAlcantarillado,detalle_recaudo.ValorAseo, " _
'    & " detalle_recaudo.OtroValor, detalle_recaudo.Subsidio, " _
'    & " detalle_recaudo.rValorFijo, detalle_recaudo.rValorConsumo, " _
'    & " detalle_recaudo.rValorAlcantarillado, detalle_recaudo.rValorAseo, " _
'    & " detalle_recaudo.rOtroValor, detalle_recaudo.rInteresMora, " _
'    & " tipo_recaudo.nombre  FROM   detalle_recaudo INNER JOIN tipo_recaudo " _
'    & " ON detalle_recaudo.id_tipo_recaudo=tipo_recaudo.id  ORDER BY tipo_recaudo.nombre "

    SQL = ""

    forma.UpdateReport SQL, "", "rptRecaudos.rpt", True, "RECAUDOS", False
    forma.Show 0, Me
End Sub

Private Sub mnuReconexion_Click()
 Load frm_Reconexiones
    frm_Reconexiones.Show 0, Me
End Sub

Private Sub mnuRecuperarBase_Click()
On Error GoTo ResumenError
  With cmDir
  Screen.MousePointer = vbHourglass
       .ShowOpen
       
       Base.Close
       Set Base = Nothing
        If Dir(App.Path & "\Copia\CopiaServicios.mdb") <> "" Then
        
            Kill App.Path & "\Copia\CopiaServicios.mdb"
        End If
       DBEngine.CompactDatabase App.Path & "\servicios.mdb", App.Path & "\Copia\CopiaServicios.mdb"
       If Dir(App.Path & "\servicios.mdb") <> "" Then
        Kill App.Path & "\servicios.mdb"
       End If
       CompactDatabase .FileName, App.Path & "\servicios.mdb"
       
  End With
 
  
  'Kill App.Path & "\servicios.mdb"
 ' Name App.Path & "\temp2.mdb" As App.Path & "\servicios.mdb"
  
    ConectarBase
      'Filtro
       
   Screen.MousePointer = vbDefault
   Exit Sub
ResumenError:
    Screen.MousePointer = vbDefault
    If err.Number <> 32755 Then
       MsgBox "Error " & err.Number & " " & err.Description
       End If
    
End Sub

Private Sub mnuSubsidios_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
               
    lsql = "SELECT detalle_facturacion.SubsidioFijoAcueducto,detalle_facturacion.SubsidioFijoAlcantarillado, " _
    & " detalle_facturacion.SubsidioFijoAseo, suscriptor.id_uso, uso.descripcion " _
    & " FROM (detalle_facturacion INNER JOIN suscriptor ON detalle_facturacion.id_suscriptor=suscriptor.id) " _
    & " INNER JOIN uso ON suscriptor.id_uso=uso.id  ORDER BY suscriptor.id_uso "

               
     Report.UpdateReport SQL, "", "rptSubsidios.rpt", False, "", False
     Report.Show
 
End Sub

Private Sub mnuSuscriptor_Click()
Dim BaseGBS As ADODB.Connection
Dim R1 As ADODB.Recordset
Dim R2 As ADODB.Recordset
Dim StrCon As String
Dim Conn As String
Dim strCodigo As String
Dim strNombre As String
Dim bAlca As Integer
Dim bAseo As Integer
Dim strDireccion As String
Dim Uso As Integer
Dim SQL As String
Dim lsql As String
Dim count As Integer
Dim iDigito As Integer
Dim iUno As Integer
Dim iDos As Integer
Dim iTres As Integer
Dim Suma As Integer
 
       
'  Set BaseGBS = New ADODB.Connection
'  'Conexion = "driver={microsoft visual foxpro driver};" & "sourcetype=DBF;" & "sourcedb=c:\color\sitedata\;" & "exclusive=No;" & "Mode=readwrite;"
'  'strDir = "C:\PDF\GBS\"
' ' strdir = "C:\DESCONT\Estacion"
' StrCon = "C:\Modal\Simacota"
'  Conn = "Driver=Microsoft Visual Foxpro Driver;SourceType=DBF;SourceDB=" & StrCon & ";exclusive=No;"
'
'  BaseGBS.Open Conn, , , True
'
'  Set R1 = New ADODB.Recordset
'
' R1.Open "SELECT * FROM usuarios", BaseGBS, adOpenDynamic
' count = 0
' BaseExecute "DELETE FROM suscriptor"
' While Not R1.EOF
'       iUno = Mid(R1("Cod_usua"), 3, 1)
'       iDos = Mid(R1("Cod_usua"), 4, 1)
'       iTres = Mid(R1("Cod_usua"), 5, 1)
'       Suma = (iUno * 3) + (iDos * 2) + iTres
'       iDigito = Suma Mod 10
'
'       strCodigo = "745" & "-" & Mid(R1("Cod_usua"), 1, 2) & "-" & Mid(R1("Cod_usua"), 3) & "-0000-" & iDigito
'       strNombre = R1("nombre") & ""
'       If Trim(R1("direccion")) = "" Then
'          strDireccion = "No hay"
'       Else
'          strDireccion = Trim(R1("direccion"))
'       End If
'       lSql = "SELECT id FROM uso WHERE codigo=" & R1("cod_cat")
'       Set R2 = New ADODB.Recordset
'       ExecuteSql R2, lSql
'       If gError = 0 Then
'          If Not R2.BOF Then
'             Uso = R2(0)
'          End If
'          R2.Close
'          Set R2 = Nothing
'       End If
'       bAlca = IIf(R1("S_alca") = True, 1, 0)
'       bAseo = IIf(R1("S_aseo") = True, 1, 0)
'
'       count = count + 1
'       lSql = "INSERT INTO suscriptor (codigo,sistema,nombre,direccion,alcantarillado,aseo,id_uso) " _
'       & " VALUES ('" & strCodigo & "'," & count & ",'" & Trim(strNombre) & "','" & Trim(strDireccion) & "'," & bAlca & "," _
'       & " " & bAseo & "," & Uso & ")"
'       BaseExecute lSql
'       R1.MoveNext
' Wend
'    R1.Close
'    Set R1 = Nothing
    Load frm_Suscriptor
    frm_Suscriptor.Show 0, Me
'Dim Base2 As Database
'Dim R1 As Recordset
'Dim SQL As String
'Dim Conn As String
'
'  '  Conn = "Driver=Microsoft Visual Foxpro Driver;SourceType=DBF;SourceDB='F:\Simacota\Base';exclusive=No;"
'    Set Base2 = OpenDatabase("F:\Simacota\Base", False, _
'                       False, "FoxPro 3.0")
'
'
'
'    Set R1 = Base2.OpenRecordset("usuarios")
'    R1.Open
'
    End Sub

Private Sub mnuSuscriptores_Click()

End Sub

Private Sub mnuSuscriptorres_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
    SQL = " SELECT suscriptor.nombre, suscriptor.direccion, suscriptor.sistema, " _
    & " uso.codigo, suscriptor.alcantarillado, suscriptor.aseo " _
    & " FROM suscriptor INNER JOIN uso ON suscriptor.id_uso=uso.id " _
    & " ORDER BY suscriptor.sistema"


    Report.UpdateReport SQL, "", "RptSuscriptor.rpt", False, False
    Report.Show
End Sub

Private Sub mnuTarifas_Click()
Dim Report As frm_Reporte
Dim SQL As String
    Set Report = New frm_Reporte
               
    lsql = " SELECT uso.codigo, uso.valorFijo,uso.valorAseo, " _
    & " uso.ValorR1,uso.ValorR2, uso.ValorR3, " _
    & " uso.porcentajeAlcantarillado, uso.SubsidioFijo, " _
    & " uso.descripcion FROM uso"


               
     Report.UpdateReport SQL, "", "rptusosTarifas.rpt", False, "", False
     Report.Show
 
End Sub

Private Sub mnuUso_Click()
    Load frm_Uso
    frm_Uso.Show 0, Me
End Sub

Private Sub mnuUsuario_Click()
    Load frm_usuario
    frm_usuario.Show 0, Me
End Sub
