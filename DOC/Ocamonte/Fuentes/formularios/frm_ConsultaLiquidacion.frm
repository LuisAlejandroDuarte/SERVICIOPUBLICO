VERSION 5.00
Begin VB.Form frm_ConsultaLiquidacion 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Liquidación"
   ClientHeight    =   9075
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   9330
   ClipControls    =   0   'False
   BeginProperty Font 
      Name            =   "Times New Roman"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9075
   ScaleWidth      =   9330
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cmbFecha 
      Height          =   330
      Left            =   60
      Style           =   2  'Dropdown List
      TabIndex        =   69
      Top             =   30
      Width           =   2745
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Cerrar"
      Height          =   375
      Left            =   7320
      TabIndex        =   52
      Top             =   8670
      Width           =   1935
   End
   Begin VB.Frame Frame6 
      Caption         =   "Consumos"
      Height          =   2025
      Left            =   4710
      TabIndex        =   43
      Top             =   3720
      Width           =   4545
      Begin VB.TextBox txtConsumoTotal 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2310
         Locked          =   -1  'True
         TabIndex        =   50
         Top             =   1440
         Width           =   2115
      End
      Begin VB.TextBox txtConsumoSuntuario 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   150
         Locked          =   -1  'True
         TabIndex        =   48
         Top             =   1440
         Width           =   2115
      End
      Begin VB.TextBox txtConsumoBasico 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   45
         Top             =   450
         Width           =   2115
      End
      Begin VB.TextBox txtConsumoComplementario 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   44
         Top             =   450
         Width           =   2115
      End
      Begin VB.Label Label22 
         Caption         =   "Total"
         Height          =   285
         Left            =   2310
         TabIndex        =   51
         Top             =   1110
         Width           =   1515
      End
      Begin VB.Label Label21 
         Caption         =   "Suntuario"
         Height          =   285
         Left            =   150
         TabIndex        =   49
         Top             =   1140
         Width           =   1515
      End
      Begin VB.Label Label20 
         Caption         =   "Básico"
         Height          =   285
         Left            =   120
         TabIndex        =   47
         Top             =   240
         Width           =   795
      End
      Begin VB.Label Label19 
         Caption         =   "Complementario"
         Height          =   285
         Left            =   2280
         TabIndex        =   46
         Top             =   240
         Width           =   1515
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Otros Valores"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   885
      Left            =   120
      TabIndex        =   38
      Top             =   5790
      Width           =   9135
      Begin VB.TextBox txtAjuste 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   6780
         Locked          =   -1  'True
         TabIndex        =   67
         Top             =   420
         Width           =   2115
      End
      Begin VB.TextBox txtOtroValor 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   40
         Top             =   450
         Width           =   2115
      End
      Begin VB.TextBox txtOtroSubsidio 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   3420
         Locked          =   -1  'True
         TabIndex        =   39
         Top             =   450
         Width           =   2115
      End
      Begin VB.Label Label39 
         Caption         =   "Ajuste "
         Height          =   285
         Left            =   6780
         TabIndex        =   68
         Top             =   210
         Width           =   1245
      End
      Begin VB.Label Label18 
         Caption         =   "Otro Valor"
         Height          =   285
         Left            =   120
         TabIndex        =   42
         Top             =   240
         Width           =   795
      End
      Begin VB.Label Label17 
         Caption         =   "Otro Subsidio"
         Height          =   285
         Left            =   3420
         TabIndex        =   41
         Top             =   210
         Width           =   1245
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Aseo"
      Height          =   2025
      Left            =   90
      TabIndex        =   25
      Top             =   3720
      Width           =   4515
      Begin VB.TextBox txtContribucionAseo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   65
         Top             =   1620
         Width           =   2145
      End
      Begin VB.TextBox txtRecaudoAseo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   63
         Top             =   1020
         Width           =   2115
      End
      Begin VB.TextBox txtDisposicionAseo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   61
         Top             =   1020
         Width           =   2115
      End
      Begin VB.TextBox txtRecoleccionAseo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   59
         Top             =   450
         Width           =   2115
      End
      Begin VB.TextBox txtSubsidioFijoAseo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2310
         Locked          =   -1  'True
         TabIndex        =   36
         Top             =   1620
         Width           =   2115
      End
      Begin VB.TextBox txtBarridoAseo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   26
         Top             =   450
         Width           =   2115
      End
      Begin VB.Label Label38 
         Caption         =   "Contribución"
         Height          =   255
         Left            =   120
         TabIndex        =   66
         Top             =   1380
         Width           =   1365
      End
      Begin VB.Label Label37 
         Caption         =   "Recaudo"
         Height          =   225
         Left            =   2280
         TabIndex        =   64
         Top             =   810
         Width           =   795
      End
      Begin VB.Label Label36 
         Caption         =   "Disposición"
         Height          =   225
         Left            =   120
         TabIndex        =   62
         Top             =   810
         Width           =   795
      End
      Begin VB.Label Label35 
         Caption         =   "Recolección"
         Height          =   225
         Left            =   2280
         TabIndex        =   60
         Top             =   210
         Width           =   1065
      End
      Begin VB.Label Label16 
         Caption         =   "Subsidio"
         Height          =   285
         Left            =   2310
         TabIndex        =   37
         Top             =   1350
         Width           =   795
      End
      Begin VB.Label Label14 
         Caption         =   "Barrido"
         Height          =   285
         Left            =   120
         TabIndex        =   27
         Top             =   210
         Width           =   795
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Alcantarillado"
      Height          =   2535
      Left            =   4710
      TabIndex        =   16
      Top             =   1170
      Width           =   4545
      Begin VB.TextBox txtContribucionAlcantarillado 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   57
         Top             =   2130
         Width           =   2145
      End
      Begin VB.TextBox txtSubsidioFijoAlcantarillado 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   33
         Top             =   1560
         Width           =   2145
      End
      Begin VB.TextBox txtSubsidioBasicoAlcantarillado 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2340
         Locked          =   -1  'True
         TabIndex        =   32
         Top             =   1560
         Width           =   2115
      End
      Begin VB.TextBox txtValorFijoAlcantarillado 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   20
         Top             =   450
         Width           =   2115
      End
      Begin VB.TextBox txtValorBasicoAlcantarillado 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2340
         Locked          =   -1  'True
         TabIndex        =   19
         Top             =   450
         Width           =   2115
      End
      Begin VB.TextBox txtValorComplementarioAlcantarillado 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   150
         Locked          =   -1  'True
         TabIndex        =   18
         Top             =   1020
         Width           =   2115
      End
      Begin VB.TextBox txtValorSuntuarioAlcantarillado 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2340
         Locked          =   -1  'True
         TabIndex        =   17
         Top             =   1020
         Width           =   2115
      End
      Begin VB.Label Label34 
         Caption         =   "Contribución"
         Height          =   255
         Left            =   120
         TabIndex        =   58
         Top             =   1890
         Width           =   1365
      End
      Begin VB.Label Label12 
         Caption         =   "Subsidio Fijo "
         Height          =   255
         Left            =   150
         TabIndex        =   35
         Top             =   1350
         Width           =   1365
      End
      Begin VB.Label Label11 
         Caption         =   "Subsidio Consumo"
         Height          =   225
         Left            =   2340
         TabIndex        =   34
         Top             =   1350
         Width           =   1545
      End
      Begin VB.Label Label10 
         Caption         =   "Valor Fijo "
         Height          =   285
         Left            =   120
         TabIndex        =   24
         Top             =   240
         Width           =   795
      End
      Begin VB.Label Label9 
         Caption         =   "Valor Básico "
         Height          =   225
         Left            =   2310
         TabIndex        =   23
         Top             =   240
         Width           =   1035
      End
      Begin VB.Label Label8 
         Caption         =   "Valor Complementario"
         Height          =   285
         Left            =   120
         TabIndex        =   22
         Top             =   780
         Width           =   1845
      End
      Begin VB.Label Label7 
         Caption         =   "Valor Suntuario"
         Height          =   285
         Left            =   2340
         TabIndex        =   21
         Top             =   780
         Width           =   1485
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Acueducto"
      Height          =   2475
      Left            =   90
      TabIndex        =   7
      Top             =   1200
      Width           =   4515
      Begin VB.TextBox txtContribucionAcueducto 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   55
         Top             =   2100
         Width           =   2145
      End
      Begin VB.TextBox txtSubsidioFijoAcueducto 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   29
         Top             =   1530
         Width           =   2145
      End
      Begin VB.TextBox txtSubsidioBasicoAcueducto 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2340
         Locked          =   -1  'True
         TabIndex        =   28
         Top             =   1560
         Width           =   2115
      End
      Begin VB.TextBox txtValorSuntuarioAcueducto 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2310
         Locked          =   -1  'True
         TabIndex        =   14
         Top             =   1020
         Width           =   2115
      End
      Begin VB.TextBox txtValorComplementarioAcueducto 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   12
         Top             =   1020
         Width           =   2115
      End
      Begin VB.TextBox txtValorBasicoAcueducto 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2310
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   450
         Width           =   2115
      End
      Begin VB.TextBox txtValorFijoAcueducto 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   90
         Locked          =   -1  'True
         TabIndex        =   8
         Top             =   450
         Width           =   2145
      End
      Begin VB.Label Label30 
         Caption         =   "Contribución"
         Height          =   255
         Left            =   120
         TabIndex        =   56
         Top             =   1860
         Width           =   1365
      End
      Begin VB.Label Label15 
         Caption         =   "Subsidio Fijo "
         Height          =   255
         Left            =   150
         TabIndex        =   31
         Top             =   1320
         Width           =   1365
      End
      Begin VB.Label Label13 
         Caption         =   "Subsidio Básico"
         Height          =   225
         Left            =   2340
         TabIndex        =   30
         Top             =   1350
         Width           =   1545
      End
      Begin VB.Label Label6 
         Caption         =   "Valor Suntuario"
         Height          =   225
         Left            =   2340
         TabIndex        =   15
         Top             =   810
         Width           =   1485
      End
      Begin VB.Label Label5 
         Caption         =   "Valor Complementario"
         Height          =   285
         Left            =   120
         TabIndex        =   13
         Top             =   780
         Width           =   1845
      End
      Begin VB.Label Label4 
         Caption         =   "Valor Básico "
         Height          =   225
         Left            =   2310
         TabIndex        =   11
         Top             =   270
         Width           =   1035
      End
      Begin VB.Label Label3 
         Caption         =   "Valor Fijo "
         Height          =   285
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   795
      End
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   90
      TabIndex        =   0
      Top             =   390
      Width           =   9165
      Begin VB.TextBox txtUso 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1260
         Locked          =   -1  'True
         TabIndex        =   53
         Top             =   330
         Width           =   1155
      End
      Begin VB.TextBox txtDireccion 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   5610
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   330
         Width           =   3435
      End
      Begin VB.TextBox txtNombre 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2460
         Locked          =   -1  'True
         TabIndex        =   4
         Top             =   330
         Width           =   3105
      End
      Begin VB.TextBox txtCodigo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   60
         Locked          =   -1  'True
         TabIndex        =   2
         Top             =   330
         Width           =   1155
      End
      Begin VB.Label Label31 
         Caption         =   "Uso"
         Height          =   225
         Left            =   1230
         TabIndex        =   54
         Top             =   120
         Width           =   675
      End
      Begin VB.Label Label2 
         Caption         =   "Dirección"
         Height          =   285
         Left            =   5610
         TabIndex        =   5
         Top             =   120
         Width           =   675
      End
      Begin VB.Label Label1 
         Caption         =   "Nombre"
         Height          =   225
         Left            =   2430
         TabIndex        =   3
         Top             =   120
         Width           =   675
      End
      Begin VB.Label lblCodigo 
         Caption         =   "Sistema"
         Height          =   285
         Left            =   60
         TabIndex        =   1
         Top             =   120
         Width           =   675
      End
   End
   Begin VB.PictureBox SSTab1 
      Height          =   1935
      Left            =   120
      ScaleHeight     =   1875
      ScaleWidth      =   9105
      TabIndex        =   70
      Top             =   6690
      Width           =   9165
      Begin VB.Frame Frame7 
         Height          =   1485
         Left            =   90
         TabIndex        =   89
         Top             =   360
         Width           =   8925
         Begin VB.TextBox txtDeuda 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   6750
            Locked          =   -1  'True
            TabIndex        =   98
            Top             =   450
            Width           =   2115
         End
         Begin VB.TextBox txtTotalalcantarillado 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2280
            Locked          =   -1  'True
            TabIndex        =   97
            Top             =   450
            Width           =   2115
         End
         Begin VB.TextBox txtTotalAcueducto 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   96
            Top             =   450
            Width           =   2115
         End
         Begin VB.TextBox txtTotalASeo 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   4500
            Locked          =   -1  'True
            TabIndex        =   95
            Top             =   450
            Width           =   2115
         End
         Begin VB.TextBox txtTotal 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   6720
            Locked          =   -1  'True
            TabIndex        =   94
            Top             =   1050
            Width           =   2115
         End
         Begin VB.TextBox txtRefacturado 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   93
            Top             =   1050
            Width           =   1785
         End
         Begin VB.TextBox txtTotalSubsidio 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2040
            Locked          =   -1  'True
            TabIndex        =   92
            Top             =   1050
            Width           =   1425
         End
         Begin VB.TextBox txtCredito 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   3570
            Locked          =   -1  'True
            TabIndex        =   91
            Top             =   1050
            Width           =   1395
         End
         Begin VB.TextBox txtDebito 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   5190
            Locked          =   -1  'True
            TabIndex        =   90
            Top             =   1050
            Width           =   1455
         End
         Begin VB.Label Label29 
            Caption         =   "Subsidio"
            Height          =   285
            Left            =   2040
            TabIndex        =   107
            Top             =   840
            Width           =   1515
         End
         Begin VB.Label Label28 
            Caption         =   "Refacturado"
            Height          =   285
            Left            =   120
            TabIndex        =   106
            Top             =   840
            Width           =   1515
         End
         Begin VB.Label Label27 
            Caption         =   "Deuda"
            Height          =   285
            Left            =   6750
            TabIndex        =   105
            Top             =   210
            Width           =   1515
         End
         Begin VB.Label Label26 
            Caption         =   "Alcantarillado"
            Height          =   285
            Left            =   2280
            TabIndex        =   104
            Top             =   240
            Width           =   1515
         End
         Begin VB.Label Label25 
            Caption         =   "Acueducto"
            Height          =   285
            Left            =   120
            TabIndex        =   103
            Top             =   240
            Width           =   795
         End
         Begin VB.Label Label24 
            Caption         =   "Aseo"
            Height          =   285
            Left            =   4500
            TabIndex        =   102
            Top             =   210
            Width           =   1515
         End
         Begin VB.Label Label23 
            Caption         =   "Total"
            Height          =   285
            Left            =   6720
            TabIndex        =   101
            Top             =   840
            Width           =   1515
         End
         Begin VB.Label Label32 
            Caption         =   "Crédito"
            Height          =   285
            Left            =   3570
            TabIndex        =   100
            Top             =   840
            Width           =   1065
         End
         Begin VB.Label Label33 
            Caption         =   "Débito"
            Height          =   285
            Left            =   5190
            TabIndex        =   99
            Top             =   840
            Width           =   1065
         End
      End
      Begin VB.Frame fraModificar 
         Height          =   1455
         Left            =   -74910
         TabIndex        =   71
         Top             =   390
         Width           =   8955
         Begin VB.TextBox txtUno 
            Height          =   330
            Left            =   3630
            TabIndex        =   80
            Top             =   1020
            Width           =   1665
         End
         Begin VB.TextBox txtDos 
            Height          =   330
            Left            =   1860
            TabIndex        =   79
            Top             =   1020
            Width           =   1665
         End
         Begin VB.TextBox txtTres 
            Height          =   330
            Left            =   90
            TabIndex        =   78
            Top             =   1020
            Width           =   1665
         End
         Begin VB.TextBox txtCuatro 
            Height          =   330
            Left            =   7260
            TabIndex        =   77
            Top             =   420
            Width           =   1665
         End
         Begin VB.TextBox txtCinco 
            Height          =   330
            Left            =   5460
            TabIndex        =   76
            Top             =   420
            Width           =   1665
         End
         Begin VB.TextBox txtSeis 
            Height          =   330
            Left            =   3570
            TabIndex        =   75
            Top             =   420
            Width           =   1665
         End
         Begin VB.TextBox txtAnterior 
            Height          =   330
            Left            =   1830
            TabIndex        =   74
            Top             =   420
            Width           =   1665
         End
         Begin VB.TextBox txtActual 
            Height          =   330
            Left            =   120
            TabIndex        =   73
            Top             =   420
            Width           =   1665
         End
         Begin VB.CommandButton cmdGuardar 
            Caption         =   "Guardar"
            Height          =   315
            Left            =   5490
            TabIndex        =   72
            Top             =   1020
            Width           =   1365
         End
         Begin VB.Label lblUno 
            Caption         =   "Lectura Uno"
            Height          =   255
            Left            =   3630
            TabIndex        =   88
            Top             =   810
            Width           =   1155
         End
         Begin VB.Label lblDos 
            Caption         =   "Lectura Dos"
            Height          =   255
            Left            =   1860
            TabIndex        =   87
            Top             =   780
            Width           =   1155
         End
         Begin VB.Label lblTres 
            Caption         =   "Lectura Tres"
            Height          =   255
            Left            =   120
            TabIndex        =   86
            Top             =   810
            Width           =   1155
         End
         Begin VB.Label lblCuatro 
            Caption         =   "Lectura Cuatro"
            Height          =   255
            Left            =   7260
            TabIndex        =   85
            Top             =   210
            Width           =   1155
         End
         Begin VB.Label lblCinco 
            Caption         =   "Lectura Cinco"
            Height          =   255
            Left            =   5460
            TabIndex        =   84
            Top             =   210
            Width           =   1155
         End
         Begin VB.Label lblSeis 
            Caption         =   "Lectura Seis"
            Height          =   255
            Left            =   3570
            TabIndex        =   83
            Top             =   210
            Width           =   1155
         End
         Begin VB.Label lblAnterior 
            Caption         =   "Lectura Anterior"
            Height          =   255
            Left            =   1830
            TabIndex        =   82
            Top             =   210
            Width           =   1665
         End
         Begin VB.Label LblActual 
            Caption         =   "Lectura Actual"
            Height          =   255
            Left            =   120
            TabIndex        =   81
            Top             =   210
            Width           =   1155
         End
      End
   End
End
Attribute VB_Name = "frm_ConsultaLiquidacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public id_suscriptor As Long


Private Sub cmbFecha_Change()
    Visualizar
End Sub

Private Sub cmbFecha_Click()
    cmbFecha_Change
End Sub

Private Sub cmdGuardar_Click()
Dim SQL As String

    SQL = "UPDATE suscriptor set lecturaactual=" & Val(txtActual.Text) & ", " _
    & " lecturaanterior=" & Val(txtAnterior.Text) & ",lectura1=" & Val(txtUno.Text) & ", " _
    & " lectura2=" & Val(txtDos.Text) & ",lectura3=" & Val(txtTres.Text) & ", " _
    & " lectura4=" & Val(txtCuatro.Text) & ",lectura5=" & Val(txtCinco.Text) & ", " _
    & " lectura6=" & Val(txtSeis.Text) & ", consumoactual=" & Val(txtActual.Text) - Val(txtAnterior.Text) & " WHERE id=" & id_suscriptor
    
   BaseExecute SQL
   If gError = 0 Then
      MsgBox "Guardada"
   End If
    
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub LlenarFecha()
Dim SQL As String
    
    SQL = "SELECT id,format(fecha,'mmmm yyyy') AS Nombre FROM fecha WHERE id>0 ORDER BY id DESC"
    LlenarCombo cmbFecha, SQL
    If cmbFecha.ListCount > 0 Then cmbFecha.ListIndex = 0
End Sub
Private Sub Limpiar()
          txtValorFijoAcueducto.Text = ""
          txtValorBasicoAcueducto.Text = ""
          txtValorComplementarioAcueducto.Text = ""
          txtValorSuntuarioAcueducto.Text = ""
          txtSubsidioFijoAcueducto.Text = ""
          txtSubsidioBasicoAcueducto.Text = ""
          txtContribucionAcueducto.Text = ""
          
          
          txtValorFijoAlcantarillado.Text = ""
          txtValorBasicoAlcantarillado.Text = ""
          txtValorComplementarioAlcantarillado.Text = ""
          txtValorSuntuarioAlcantarillado.Text = ""
          txtSubsidioFijoAlcantarillado.Text = ""
          txtSubsidioBasicoAlcantarillado.Text = ""
          txtContribucionAlcantarillado.Text = ""
          
          txtConsumoBasico.Text = ""
          txtConsumoComplementario.Text = ""
          txtConsumoSuntuario.Text = ""
          
          txtConsumoTotal.Text = ""
          txtBarridoAseo.Text = ""
          txtRecoleccionAseo.Text = ""
          txtDisposicionAseo.Text = ""
          txtRecaudoAseo.Text = ""
          txtSubsidioFijoAseo.Text = ""
          txtContribucionAseo.Text = ""
          
          txtAjuste.Text = ""
          'txtSubsidioFijoAseo.Text = R1("SubsidioAseo")
          
          txtOtroValor.Text = ""
          txtOtroSubsidio.Text = ""
          
          txtTotalAcueducto.Text = ""
          txtTotalalcantarillado.Text = ""
          txtTotalASeo.Text = ""
          txtTotalSubsidio.Text = ""
         'txtAjuste.Text = R1("Ajuste") & ""
          txtDeuda.Text = ""
          txtRefacturado.Text = ""
          txtTotal.Text = ""
          txtActual.Text = ""
          txtAnterior.Text = ""
          txtSeis.Text = ""
          txtCinco.Text = ""
          txtCuatro.Text = ""
          txtTres.Text = ""
          txtDos.Text = ""
          txtUno.Text = ""
          txtCredito.Text = ""
          txtDebito.Text = ""
End Sub
Private Sub Visualizar()
Dim SQL As String
Dim R1 As ADODB.Recordset
    
    
    
    SQL = "SELECT uso.codigo AS CodUso, suscriptor.*,temp_detalle_facturacion.*,facturacion.total AS Total," _
    & " facturacionrefacturados.OtroValor AS OtroValor,facturacionrefacturados.Acueducto, " _
    & " facturacionrefacturados.Alcantarillado AS Alcantarillado,facturacionrefacturados.Aseo AS Aseo, " _
    & " facturacionrefacturados.Subsidio AS Subsidio, " _
    & " facturacionrefacturados.Refacturado AS Refacturado,facturacionrefacturados.Deuda AS Deuda,facturacionrefacturados.credito AS Credito, " _
    & " facturacionrefacturados.debito AS Debito,facturacion.id_fecha " _
    & " FROM temp_detalle_facturacion,suscriptor,facturacionrefacturados,facturacion,uso WHERE " _
    & " temp_detalle_facturacion.id_suscriptor=suscriptor.id AND " _
    & " suscriptor.id_uso=uso.id AND  " _
    & " facturacion.id=facturacionrefacturados.idfactura AND " _
    & " facturacionrefacturados.idfactura=temp_detalle_facturacion.id_factura AND " _
    & " suscriptor.id=" & id_suscriptor & " AND facturacionrefacturados.fechafactu=" & cmbFecha.ItemData(cmbFecha.ListIndex)
    Set R1 = New ADODB.Recordset
    Limpiar
    ExecuteSql R1, SQL
    If gError = 0 Then
       If Not R1.BOF Then
          txtCodigo.Text = R1("sistema")
          id_suscriptor = R1("id_suscriptor")
          txtUso.Text = R1("CodUso")
          txtNombre.Text = R1("nombre")
          txtDireccion.Text = R1("direccion")
          txtValorFijoAcueducto.Text = R1("ValorFijoAcueducto")
          txtValorBasicoAcueducto.Text = R1("ValorBasicoAcueducto")
          txtValorComplementarioAcueducto.Text = R1("ValorComplementarioAcueducto") & ""
          txtValorSuntuarioAcueducto.Text = R1("ValorSuntuarioAcueducto") & ""
          txtSubsidioFijoAcueducto.Text = R1("SubsidioFijoAcueducto") & ""
          txtSubsidioBasicoAcueducto.Text = R1("SubsidioBasicoAcueducto") & ""
          txtContribucionAcueducto.Text = R1("ContribucionAcueducto") & ""
          
          
          txtValorFijoAlcantarillado.Text = R1("ValorFijoAlcantarillado") & ""
          txtValorBasicoAlcantarillado.Text = R1("ValorBasicoAlcantarillado") & ""
          txtValorComplementarioAlcantarillado.Text = R1("ValorComplementarioAlcantarillado") & ""
          txtValorSuntuarioAlcantarillado.Text = R1("ValorSuntuarioAlcantarillado") & ""
          txtSubsidioFijoAlcantarillado.Text = R1("SubsidioFijoAlcantarillado") & ""
          txtSubsidioBasicoAlcantarillado.Text = R1("SubsidioBasicoAlcantarillado") & ""
          txtContribucionAlcantarillado.Text = R1("ContribucionAlcantarillado") & ""
          
          txtConsumoBasico.Text = R1("consumoBasico") & ""
          txtConsumoComplementario.Text = R1("ConsumoComplementario") & ""
          txtConsumoSuntuario.Text = R1("ConsumoSuntuario") & ""
          
          txtConsumoTotal.Text = Val(txtConsumoBasico.Text) + Val(txtConsumoComplementario.Text) + Val(txtConsumoSuntuario.Text)
          txtBarridoAseo.Text = R1("ValorBarridoAseo") & ""
          txtRecoleccionAseo.Text = R1("ValorRecoleccionAseo") & ""
          txtDisposicionAseo.Text = R1("ValorDisposicionAseo") & ""
          txtRecaudoAseo.Text = R1("ValorRecaudoAseo") & ""
          txtSubsidioFijoAseo.Text = R1("SubsidioRecaudoAseo") + R1("SubsidioRecoleccionAseo") + R1("SubsidioBarridoAseo") + R1("SubsidioDisposicionAseo") & ""
          txtContribucionAseo.Text = R1("ContribucionAseo") & ""
          
          txtAjuste.Text = R1("Ajuste")
          'txtSubsidioFijoAseo.Text = R1("SubsidioAseo")
          
          txtOtroValor.Text = R1("OtroValor") & ""
          txtOtroSubsidio.Text = R1("OtroSubsidio") & ""
          
          txtTotalAcueducto.Text = R1("Acueducto") & ""
          txtTotalalcantarillado.Text = R1("Alcantarillado") & ""
          txtTotalASeo.Text = R1("Aseo") & ""
          txtTotalSubsidio.Text = R1("Subsidio") & ""
         'txtAjuste.Text = R1("Ajuste") & ""
          txtDeuda.Text = R1("Deuda") & ""
          txtRefacturado.Text = R1("Refacturado") & ""
          txtTotal.Text = R1("Total")
          txtActual.Text = R1("lecturaactual")
          txtAnterior.Text = R1("lecturaanterior")
          txtSeis.Text = R1("lectura6")
          txtCinco.Text = R1("lectura5")
          txtCuatro.Text = R1("lectura4")
          txtTres.Text = R1("lectura3")
          txtDos.Text = R1("lectura2")
          txtUno.Text = R1("lectura1")
          txtCredito.Text = IsNumberNull(R1("credito"))
          txtDebito.Text = IsNumberNull(R1("debito"))

      R1.Close
      End If
     Set R1 = Nothing
   End If
End Sub
Private Sub Form_Load()


    
    LlenarFecha
    
    
    
End Sub
