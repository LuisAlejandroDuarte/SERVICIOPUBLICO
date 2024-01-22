VERSION 5.00
Object = "{04F96270-432A-4BFA-8D5E-8FB6E3B50789}#16.0#0"; "txteditor.ocx"
Begin VB.Form frm_Uso 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Uso"
   ClientHeight    =   8205
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9840
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8205
   ScaleWidth      =   9840
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame FraBotonesfunciones 
      Height          =   585
      Left            =   60
      TabIndex        =   45
      Top             =   7560
      Width           =   9750
      Begin VB.CommandButton cmdListados 
         Caption         =   "&Listados"
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
         Left            =   6660
         TabIndex        =   51
         Tag             =   "1"
         Top             =   180
         Width           =   1395
      End
      Begin VB.CommandButton CmdSalir 
         Caption         =   "&Salir"
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
         Left            =   8310
         TabIndex        =   50
         Top             =   180
         Width           =   1395
      End
      Begin VB.CommandButton CmdEditar 
         Caption         =   "E&ditar"
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
         Left            =   1710
         TabIndex        =   49
         Tag             =   "1"
         Top             =   180
         Width           =   1395
      End
      Begin VB.CommandButton CmdNuevo 
         Caption         =   "&Nuevo"
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
         Left            =   60
         TabIndex        =   48
         Tag             =   "1"
         Top             =   180
         Width           =   1395
      End
      Begin VB.CommandButton CmdBuscar 
         Caption         =   "&Buscar"
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
         Left            =   3360
         TabIndex        =   47
         Tag             =   "1"
         Top             =   180
         Width           =   1395
      End
      Begin VB.CommandButton CmdEliminar 
         Caption         =   "&Eliminar"
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
         Left            =   5010
         TabIndex        =   46
         Top             =   180
         Width           =   1395
      End
   End
   Begin VB.Frame FraControles 
      Height          =   555
      Left            =   3540
      TabIndex        =   39
      Top             =   6930
      Width           =   2850
      Begin VB.CommandButton CmdUltimo 
         Height          =   300
         Left            =   2430
         Picture         =   "frm_Uso.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdSiguiente 
         Height          =   300
         Left            =   2010
         Picture         =   "frm_Uso.frx":02D6
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdAnterior 
         Height          =   300
         Left            =   510
         Picture         =   "frm_Uso.frx":0611
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   165
         Width           =   300
      End
      Begin VB.CommandButton CmdPrimero 
         Height          =   300
         Left            =   120
         Picture         =   "frm_Uso.frx":094A
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   165
         Width           =   300
      End
      Begin VB.Label LblCount 
         Alignment       =   2  'Center
         Caption         =   "9/9"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   960
         TabIndex        =   44
         Top             =   195
         Width           =   975
      End
   End
   Begin VB.Frame fraUso 
      Height          =   7455
      Left            =   30
      TabIndex        =   35
      Top             =   90
      Width           =   9795
      Begin VB.Frame Frame4 
         Caption         =   "OTROS VALORES"
         ForeColor       =   &H00C00000&
         Height          =   2685
         Left            =   5010
         TabIndex        =   71
         Top             =   4110
         Width           =   4545
         Begin TxtEditor.TxtEdit txtInteresMora 
            Height          =   315
            Left            =   1290
            TabIndex        =   32
            Top             =   540
            Width           =   1065
            _ExtentX        =   1879
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtPorcentajeFinanciacion 
            Height          =   315
            Left            =   2520
            TabIndex        =   33
            Top             =   540
            Width           =   1065
            _ExtentX        =   1879
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtOtroValor 
            Height          =   315
            Left            =   60
            TabIndex        =   31
            Top             =   510
            Width           =   1065
            _ExtentX        =   1879
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtOtroSubsidio 
            Height          =   315
            Left            =   90
            TabIndex        =   34
            Top             =   1230
            Width           =   1065
            _ExtentX        =   1879
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin VB.Label Label9 
            Caption         =   "Interés Mora "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1290
            TabIndex        =   75
            Top             =   300
            Width           =   1125
         End
         Begin VB.Label Label10 
            Caption         =   "Porcentaje Financiación"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   2520
            TabIndex        =   74
            Top             =   300
            Width           =   1725
         End
         Begin VB.Label Label13 
            Caption         =   "Otro Valor"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   60
            TabIndex        =   73
            Top             =   300
            Width           =   1005
         End
         Begin VB.Label Label18 
            Caption         =   "Otro Subsidio"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   72
            Top             =   1020
            Width           =   1005
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "ASEO"
         ForeColor       =   &H00FF0000&
         Height          =   2715
         Left            =   4950
         TabIndex        =   67
         Top             =   1320
         Width           =   4605
         Begin TxtEditor.TxtEdit txtRecaudoAseo 
            Height          =   315
            Left            =   1590
            TabIndex        =   16
            Top             =   480
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtSubsidioAseo 
            Height          =   315
            Left            =   1620
            TabIndex        =   19
            Top             =   1350
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtIncrementoAseo 
            Height          =   315
            Left            =   3120
            TabIndex        =   20
            Top             =   1350
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtBarridoAseo 
            Height          =   315
            Left            =   120
            TabIndex        =   15
            Top             =   480
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtRecoleccionAseo 
            Height          =   315
            Left            =   3090
            TabIndex        =   17
            Top             =   480
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtDisposicionAseo 
            Height          =   315
            Left            =   150
            TabIndex        =   18
            Top             =   1350
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtContribucionAseo 
            Height          =   315
            Left            =   150
            TabIndex        =   21
            Top             =   2220
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtCostoReferenciaAseo 
            Height          =   315
            Left            =   1680
            TabIndex        =   94
            Top             =   2220
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtCargoFijoAseo 
            Height          =   315
            Left            =   3150
            TabIndex        =   96
            Top             =   2190
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin VB.Label Label40 
            Caption         =   "Cargo Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   3150
            TabIndex        =   97
            Top             =   2010
            Width           =   1185
         End
         Begin VB.Label Label39 
            Caption         =   "Costo Referencia"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   1680
            TabIndex        =   95
            Top             =   2010
            Width           =   1365
         End
         Begin VB.Label Label15 
            Caption         =   "Contribución"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   150
            TabIndex        =   87
            Top             =   2010
            Width           =   1125
         End
         Begin VB.Label Label31 
            Caption         =   "Disposición"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   150
            TabIndex        =   78
            Top             =   1170
            Width           =   825
         End
         Begin VB.Label Label30 
            Caption         =   "Recolección"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   3090
            TabIndex        =   77
            Top             =   270
            Width           =   825
         End
         Begin VB.Label Label29 
            Caption         =   "Barrido"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   76
            Top             =   270
            Width           =   825
         End
         Begin VB.Label Label7 
            Caption         =   "Incremento"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3120
            TabIndex        =   70
            Top             =   1140
            Width           =   1005
         End
         Begin VB.Label Label17 
            Caption         =   "Subsidio"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   1620
            TabIndex        =   69
            Top             =   1170
            Width           =   1005
         End
         Begin VB.Label Label12 
            Caption         =   "Recaudo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   1590
            TabIndex        =   68
            Top             =   240
            Width           =   825
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "ALCANTARILLADO"
         ForeColor       =   &H00FF0000&
         Height          =   2745
         Left            =   120
         TabIndex        =   59
         Top             =   4080
         Width           =   4815
         Begin TxtEditor.TxtEdit txtIncrementoFijoAlcantarillado 
            Height          =   315
            Left            =   120
            TabIndex        =   28
            Top             =   1740
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtSubsidioFijoAlcantarillado 
            Height          =   315
            Left            =   1710
            TabIndex        =   26
            Top             =   1140
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtIncrementoConsumoAlcantarillado 
            Height          =   315
            Left            =   1740
            TabIndex        =   29
            Top             =   1770
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtValorFijoAlcantarillado 
            Height          =   315
            Left            =   120
            TabIndex        =   22
            Top             =   510
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtValorBasicoAlcantarillado 
            Height          =   315
            Left            =   1710
            TabIndex        =   23
            Top             =   510
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtValorComplementarioAlcantarillado 
            Height          =   315
            Left            =   3270
            TabIndex        =   24
            Top             =   510
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtValorSuntuarioAlcantarillado 
            Height          =   315
            Left            =   120
            TabIndex        =   25
            Top             =   1140
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtSubsidioBasicoAlcantarillado 
            Height          =   315
            Left            =   3270
            TabIndex        =   27
            Top             =   1140
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtContribucionAlcantarillado 
            Height          =   315
            Left            =   3270
            TabIndex        =   30
            Top             =   1770
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtCostoReferenciaAlcantarillado 
            Height          =   315
            Left            =   120
            TabIndex        =   98
            Top             =   2340
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtCargoFijoAlcantarillado 
            Height          =   315
            Left            =   1650
            TabIndex        =   100
            Top             =   2340
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtConsumoAlcantarillado 
            Height          =   315
            Left            =   3240
            TabIndex        =   102
            Top             =   2340
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin VB.Label Label43 
            Caption         =   "Consumo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   3240
            TabIndex        =   103
            Top             =   2160
            Width           =   1395
         End
         Begin VB.Label Label42 
            Caption         =   "Cargo Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   1680
            TabIndex        =   101
            Top             =   2160
            Width           =   1575
         End
         Begin VB.Label Label41 
            Caption         =   "Costo Referencia"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   120
            TabIndex        =   99
            Top             =   2160
            Width           =   1575
         End
         Begin VB.Label Label34 
            Caption         =   "Contribución"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3300
            TabIndex        =   85
            Top             =   1500
            Width           =   1125
         End
         Begin VB.Label Label33 
            Caption         =   "Subsidio Básico"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3270
            TabIndex        =   84
            Top             =   840
            Width           =   1365
         End
         Begin VB.Label Label28 
            Caption         =   "Valor Suntuario "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   66
            Top             =   900
            Width           =   1275
         End
         Begin VB.Label Label27 
            Caption         =   "Valor Complementario "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   525
            Left            =   3270
            TabIndex        =   65
            Top             =   120
            Width           =   1455
         End
         Begin VB.Label Label26 
            Caption         =   "Valor Básico"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1710
            TabIndex        =   64
            Top             =   270
            Width           =   1155
         End
         Begin VB.Label Label25 
            Caption         =   "Valor Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   63
            Top             =   270
            Width           =   825
         End
         Begin VB.Label Label8 
            Caption         =   "Incr. Consumo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1740
            TabIndex        =   62
            Top             =   1500
            Width           =   1245
         End
         Begin VB.Label Label6 
            Caption         =   "Incremento Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   120
            TabIndex        =   61
            Top             =   1500
            Width           =   1335
         End
         Begin VB.Label Label16 
            Caption         =   "Subsidio Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1770
            TabIndex        =   60
            Top             =   900
            Width           =   1365
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "ACUEDUCTO"
         ForeColor       =   &H00FF0000&
         Height          =   2715
         Left            =   120
         TabIndex        =   52
         Top             =   1320
         Width           =   4785
         Begin TxtEditor.TxtEdit txtValorFijoAcueducto 
            Height          =   315
            Left            =   60
            TabIndex        =   6
            Top             =   510
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtValorBasicoAcueducto 
            Height          =   315
            Left            =   1680
            TabIndex        =   7
            Top             =   510
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtValorComplementarioAcueducto 
            Height          =   315
            Left            =   3210
            TabIndex        =   8
            Top             =   540
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtValorSuntuarioAcueducto 
            Height          =   315
            Left            =   90
            TabIndex        =   9
            Top             =   1080
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtSubsidioFijoAcueducto 
            Height          =   315
            Left            =   3210
            TabIndex        =   12
            Top             =   1110
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtIncrementoFijoAcueducto 
            Height          =   315
            Left            =   1650
            TabIndex        =   13
            Top             =   1680
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtSubsidioBasicoAcueducto 
            Height          =   315
            Left            =   1680
            TabIndex        =   10
            Top             =   1110
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtIncrementoConsumoAcueducto 
            Height          =   315
            Left            =   90
            TabIndex        =   11
            Top             =   1680
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtContribucionAcueducto 
            Height          =   315
            Left            =   3240
            TabIndex        =   14
            Top             =   1680
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtCostoReferenciaAcueducto 
            Height          =   315
            Left            =   90
            TabIndex        =   88
            Top             =   2250
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtCargoFijoAcueducto 
            Height          =   315
            Left            =   1620
            TabIndex        =   90
            Top             =   2250
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin TxtEditor.TxtEdit txtConsumoAcueducto 
            Height          =   315
            Left            =   3210
            TabIndex        =   92
            Top             =   2250
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            MaxLength       =   0
            Enabled         =   -1  'True
            Locked          =   0   'False
            PasswordCharacter=   ""
            Text            =   ""
            IsNumeric       =   -1  'True
         End
         Begin VB.Label Label38 
            Caption         =   "Consumo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   3210
            TabIndex        =   93
            Top             =   2070
            Width           =   1395
         End
         Begin VB.Label Label37 
            Caption         =   "Cargo Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   1650
            TabIndex        =   91
            Top             =   2070
            Width           =   1275
         End
         Begin VB.Label Label36 
            Caption         =   "Costo Referencia"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000001&
            Height          =   255
            Left            =   90
            TabIndex        =   89
            Top             =   2070
            Width           =   1365
         End
         Begin VB.Label Label35 
            Caption         =   "Contribución"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3240
            TabIndex        =   86
            Top             =   1470
            Width           =   1125
         End
         Begin VB.Label Label4 
            Caption         =   "Incr. Consumo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   83
            Top             =   1470
            Width           =   1575
         End
         Begin VB.Label Label32 
            Caption         =   "Subsidio Básico"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1680
            TabIndex        =   82
            Top             =   900
            Width           =   1335
         End
         Begin VB.Label Label5 
            Caption         =   "Incremento Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1680
            TabIndex        =   58
            Top             =   1470
            Width           =   1365
         End
         Begin VB.Label Label14 
            Caption         =   "Subsidio Fijo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3210
            TabIndex        =   57
            Top             =   900
            Width           =   945
         End
         Begin VB.Label Label24 
            Caption         =   "Valor Suntuario"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   90
            TabIndex        =   56
            Top             =   870
            Width           =   1305
         End
         Begin VB.Label Label23 
            Caption         =   "Valor Complementario"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   3210
            TabIndex        =   55
            Top             =   120
            Width           =   1425
         End
         Begin VB.Label Label22 
            Caption         =   "Valor Básico"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1680
            TabIndex        =   54
            Top             =   270
            Width           =   1305
         End
         Begin VB.Label Label11 
            Caption         =   "Valor Fijo    "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   60
            TabIndex        =   53
            Top             =   270
            Width           =   945
         End
      End
      Begin TxtEditor.TxtEdit txtCodigo 
         Height          =   315
         Left            =   120
         TabIndex        =   0
         Top             =   330
         Width           =   2145
         _ExtentX        =   3784
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtDescripcion 
         Height          =   315
         Left            =   4260
         TabIndex        =   2
         Top             =   330
         Width           =   5415
         _ExtentX        =   9551
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtEstrato 
         Height          =   315
         Left            =   2310
         TabIndex        =   1
         Top             =   330
         Width           =   1875
         _ExtentX        =   3307
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   0   'False
      End
      Begin TxtEditor.TxtEdit txtRangoUno 
         Height          =   315
         Left            =   120
         TabIndex        =   3
         Top             =   930
         Width           =   1065
         _ExtentX        =   1879
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin TxtEditor.TxtEdit txtRangoDOS 
         Height          =   315
         Left            =   2310
         TabIndex        =   4
         Top             =   930
         Width           =   1065
         _ExtentX        =   1879
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin TxtEditor.TxtEdit txtRangoTRES 
         Height          =   315
         Left            =   4290
         TabIndex        =   5
         Top             =   930
         Width           =   1065
         _ExtentX        =   1879
         _ExtentY        =   556
         MaxLength       =   0
         Enabled         =   -1  'True
         Locked          =   0   'False
         PasswordCharacter=   ""
         Text            =   ""
         IsNumeric       =   -1  'True
      End
      Begin VB.Label Label21 
         Caption         =   "Rango TRES"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4290
         TabIndex        =   81
         Top             =   720
         Width           =   945
      End
      Begin VB.Label Label20 
         Caption         =   "Rango DOS"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2310
         TabIndex        =   80
         Top             =   720
         Width           =   945
      End
      Begin VB.Label Label19 
         Caption         =   "Rango UNO "
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   79
         Top             =   720
         Width           =   945
      End
      Begin VB.Label Label3 
         Caption         =   "Estrato"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2310
         TabIndex        =   38
         Top             =   120
         Width           =   945
      End
      Begin VB.Label Label2 
         Caption         =   "Descripción"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   4260
         TabIndex        =   37
         Top             =   120
         Width           =   945
      End
      Begin VB.Label Label1 
         Caption         =   "Código"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   120
         TabIndex        =   36
         Top             =   120
         Width           =   945
      End
   End
End
Attribute VB_Name = "frm_Uso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim Editar As Boolean 'Variable que indica si esta en estado de edición para guardar
Dim Registro As ADODB.Recordset 'Variable que almacena el registro activo durante la ejecución del formulario
Dim Mensaje As String 'Variable que almacena la desición tomada después de un mensaje de información
Dim cambio As Boolean 'Variable que indica si hubo cambios en el formulario
Dim iCount As Integer
Dim iPosition As Integer
Dim gOrder As String
Dim gFilter As String
Dim SQL As String
Dim lsql As String
Dim gSql As String
Dim bCambiarClave As Boolean

'''Procedimiento que muestra en pantalla el registro Actual
Private Sub MostrarRegistro()
    LimpiarFormulario
    
    LblCount.Caption = iPosition & "/" & iCount
    txtCodigo.Text = Trim(Registro("codigo")) & ""
    txtEstrato.Text = Trim(Registro("Estrato")) & ""
    txtDescripcion.Text = Trim(Registro("Descripcion")) & ""
    
    txtRangoUno.Text = IsNumberNull(Registro("RangoUno"))
    txtRangoDOS.Text = IsNumberNull(Registro("RangoDos"))
    txtRangoTRES.Text = IsNumberNull(Registro("RangoTres"))
    
    txtValorFijoAcueducto.Text = IsNumberNull(Registro("ValorFijoAcueducto"))
    txtValorBasicoAcueducto.Text = IsNumberNull(Registro("ValorBasicoAcueducto"))
    txtValorComplementarioAcueducto.Text = IsNumberNull(Registro("ValorComplementarioAcueducto"))
    txtValorSuntuarioAcueducto.Text = IsNumberNull(Registro("ValorSuntuarioAcueducto"))
    txtSubsidioFijoAcueducto.Text = IsNumberNull(Registro("SubsidioFijoAcueducto"))
    txtSubsidioBasicoAcueducto.Text = IsNumberNull(Registro("SubsidioBasicoAcueducto"))
    txtIncrementoConsumoAcueducto.Text = IsNumberNull(Registro("IncrementoConsumoAcueducto"))
    txtIncrementoFijoAcueducto.Text = IsNumberNull(Registro("IncrementoFijoAcueducto"))
    txtContribucionAcueducto.Text = IsNumberNull(Registro("PorcentajeContribucionAcueducto"))
    txtCostoReferenciaAcueducto.Text = IsNumberNull(Registro("CostoReferenciaAcueducto"))
    txtCargoFijoAcueducto.Text = IsNumberNull(Registro("CargoFijoAcueducto"))
    txtConsumoAcueducto.Text = IsNumberNull(Registro("ConsumoAcueducto"))
    
    
    
    txtValorFijoAlcantarillado.Text = IsNumberNull(Registro("ValorFijoAlcantarillado"))
    txtValorBasicoAlcantarillado.Text = IsNumberNull(Registro("ValorBasicoAlcantarillado"))
    txtValorComplementarioAlcantarillado.Text = IsNumberNull(Registro("ValorComplementarioAlcantarillado"))
    txtValorSuntuarioAlcantarillado.Text = IsNumberNull(Registro("ValorSuntuarioAlcantarillado"))
    txtSubsidioFijoAlcantarillado.Text = IsNumberNull(Registro("SubsidioFijoAlcantarillado"))
    txtSubsidioBasicoAlcantarillado.Text = IsNumberNull(Registro("SubsidioBasicoAlcantarillado"))
    txtIncrementoConsumoAlcantarillado.Text = IsNumberNull(Registro("IncrementoConsumoAlcantarillado"))
    txtIncrementoFijoAlcantarillado.Text = IsNumberNull(Registro("IncrementoFijoAlcantarillado"))
    txtContribucionAlcantarillado.Text = IsNumberNull(Registro("PorcentajeContribucionAlcantarillado"))
    txtCostoReferenciaAlcantarillado.Text = IsNumberNull(Registro("CostoReferenciaAlcantarillado"))
    txtCargoFijoAlcantarillado.Text = IsNumberNull(Registro("CargoFijoAlcantarillado"))
    txtConsumoAlcantarillado.Text = IsNumberNull(Registro("ConsumoAlcantarillado"))
    
    
    txtBarridoAseo.Text = IsNumberNull(Registro("ValorBarridoAseo"))
    txtRecaudoAseo.Text = IsNumberNull(Registro("ValorRecaudoAseo"))
    txtRecoleccionAseo.Text = IsNumberNull(Registro("ValorRecoleccionAseo"))
    txtDisposicionAseo.Text = IsNumberNull(Registro("ValorDisposicionAseo"))
    txtSubsidioAseo.Text = IsNumberNull(Registro("SubsidioAseo"))
    txtIncrementoAseo.Text = IsNumberNull(Registro("IncrementoAseo"))
    txtContribucionAseo.Text = IsNumberNull(Registro("PorcentajeContribucionAseo"))
    txtCostoReferenciaAseo.Text = IsNumberNull(Registro("CostoReferenciaAseo"))
    txtCargoFijoAseo.Text = IsNumberNull(Registro("CargoFijoAseo"))
    
    
    txtOtroValor.Text = IsNumberNull(Registro("OtroValor"))
    txtOtroSubsidio.Text = IsNumberNull(Registro("OtroSubsidio"))
    txtInteresMora.Text = IsNumberNull(Registro("InteresMora"))
    txtPorcentajeFinanciacion.Text = IsNumberNull(Registro("PorcentajeFinanaciacion"))
    
End Sub
'''función que se encarga de verificar  si los datos importantes no contienen datos en blanco
Function ValidarCampos() As Boolean
Dim Reg As ADODB.Recordset


   ValidarCampos = True

    If Trim(txtCodigo.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Código"
       txtCodigo.SetFocus
       Exit Function
    End If


    If Trim(txtDescripcion.Text) = "" Then
       ValidarCampos = False
       MsgBox "Falta Descripción"
       txtDescripcion.SetFocus
       Exit Function
    End If
    
End Function
Private Sub LimpiarFormulario() 'Limpia los controles  del formulario
   txtCodigo.Text = ""
    txtEstrato.Text = ""
    txtDescripcion.Text = ""
    
    txtRangoUno.Text = ""
    txtRangoDOS.Text = ""
    txtRangoTRES.Text = ""
    
    txtValorFijoAcueducto.Text = ""
    txtValorBasicoAcueducto.Text = ""
    txtValorComplementarioAcueducto.Text = ""
    txtValorSuntuarioAcueducto.Text = ""
    txtSubsidioFijoAcueducto.Text = ""
    txtSubsidioBasicoAcueducto.Text = ""
    txtIncrementoConsumoAcueducto.Text = ""
    txtIncrementoFijoAcueducto.Text = ""
    txtContribucionAcueducto.Text = ""
    txtCostoReferenciaAcueducto.Text = ""
    txtCargoFijoAcueducto.Text = ""
    txtConsumoAcueducto.Text = ""
    
    txtValorFijoAlcantarillado.Text = ""
    txtValorBasicoAlcantarillado.Text = ""
    txtValorComplementarioAlcantarillado.Text = ""
    txtValorSuntuarioAlcantarillado.Text = ""
    txtSubsidioFijoAlcantarillado.Text = ""
    txtSubsidioBasicoAlcantarillado.Text = ""
    txtIncrementoConsumoAlcantarillado.Text = ""
    txtIncrementoFijoAlcantarillado.Text = ""
    txtContribucionAlcantarillado.Text = ""
    txtCostoReferenciaAlcantarillado.Text = ""
    txtCargoFijoAlcantarillado.Text = ""
    txtConsumoAlcantarillado.Text = ""
    
    txtBarridoAseo.Text = ""
    txtRecaudoAseo.Text = ""
    txtRecoleccionAseo.Text = ""
    txtDisposicionAseo.Text = ""
    txtSubsidioAseo.Text = ""
    txtIncrementoAseo.Text = ""
    txtContribucionAseo.Text = ""
    txtCostoReferenciaAseo.Text = ""
    txtCargoFijoAseo.Text = ""
    
    
    txtOtroValor.Text = ""
    txtOtroSubsidio.Text = ""
    txtInteresMora.Text = ""
    txtPorcentajeFinanciacion.Text = ""
End Sub
'''Guarda o Actualiza el registro
Private Sub GuardarRegistro()
Dim iLas As Long
Dim ilast As Long
    If Editar Then
    
    
       SQL = "UPDATE uso SET codigo='" & Trim(txtCodigo.Text) & "', " _
       & " estrato='" & Trim(txtEstrato.Text) & "',descripcion='" & Trim(txtDescripcion.Text) & "'," _
       & " RangoUno=" & IsNumberNull(txtRangoUno.Text) & ", " _
       & " RangoDos=" & IsNumberNull(txtRangoDOS.Text) & ", " _
       & " RangoTres= = " & IsNumberNull(txtRangoTRES.Text) & ", " _
       & " ValorFijoAcueducto = " & IsNumberNull(txtValorFijoAcueducto.Text) & "," _
       & " ValorBasicoAcueducto=" & IsNumberNull(txtValorBasicoAcueducto.Text) & ", " _
       & " ValorComplementarioAcueducto=" & IsNumberNull(txtValorComplementarioAcueducto.Text) & ", ValorSuntuarioAcueducto=" & IsNumberNull(txtValorSuntuarioAcueducto.Text) & ", " _
       & " SubsidioFijoAcueducto =" & IsNumberNull(txtSubsidioFijoAcueducto.Text) & ", SubsidioBasicoAcueducto=" & IsNumberNull(txtSubsidioBasicoAcueducto.Text) & ", " _
       & " IncrementoConsumoAcueducto=" & IsNumberNull(txtIncrementoConsumoAcueducto.Text) & ", IncrementoFijoAcueducto=" & IsNumberNull(txtIncrementoFijoAcueducto.Text) & ", " _
       & " PorcentajeContribucionAcueducto=" & IsNumberNull(txtContribucionAcueducto.Text) & ", ValorFijoAlcantarillado=" & IsNumberNull(txtValorFijoAlcantarillado.Text) & ", " _
       & " ValorBasicoAlcantarillado=" & IsNumberNull(txtValorBasicoAlcantarillado.Text) & ", ValorComplementarioAlcantarillado=" & IsNumberNull(txtValorComplementarioAlcantarillado.Text) & "," _
       & " ValorSuntuarioAlcantarillado =" & IsNumberNull(txtValorSuntuarioAlcantarillado.Text) & ",  SubsidioFijoAlcantarillado=" & IsNumberNull(txtSubsidioFijoAlcantarillado.Text) & "," _
       & " SubsidioBasicoAlcantarillado =" & IsNumberNull(txtSubsidioBasicoAlcantarillado.Text) & ",  IncrementoConsumoAlcantarillado=" & IsNumberNull(txtIncrementoConsumoAlcantarillado.Text) & "," _
       & " IncrementoFijoAlcantarillado=" & IsNumberNull(txtIncrementoFijoAlcantarillado.Text) & ", PorcentajeContribucionAlcantarillado=" & IsNumberNull(txtContribucionAlcantarillado.Text) & "," _
       & " ValorBarridoAseo=" & IsNumberNull(txtBarridoAseo.Text) & ", ValorRecaudoAseo=" & IsNumberNull(txtRecaudoAseo.Text) & "," _
       & " ValorRecoleccionAseo =" & IsNumberNull(txtRecoleccionAseo.Text) & ",ValorDisposicionAseo=" & IsNumberNull(txtDisposicionAseo.Text) & "," _
       & " SubsidioAseo =" & IsNumberNull(txtSubsidioAseo.Text) & ",CostoReferenciaAcueducto=" & IsNumberNull(txtCostoReferenciaAcueducto.Text) & ",CargoFijoAcueducto=" & IsNumberNull(txtCargoFijoAcueducto.Text) & ",ConsumoAcueducto=" & IsNumberNull(txtConsumoAcueducto.Text) & ", " _
       & " IncrementoAseo=" & IsNumberNull(txtIncrementoAseo.Text) & ",CostoReferenciaAlcantarillado=" & IsNumberNull(txtCostoReferenciaAlcantarillado.Text) & ",CargoFijoAlcantarillado=" & IsNumberNull(txtCargoFijoAlcantarillado.Text) & ",ConsumoAlcantarillado=" & IsNumberNull(txtConsumoAlcantarillado.Text) & ", " _
       & " PorcentajeContribucionAseo =" & IsNumberNull(txtContribucionAseo.Text) & ",CostoReferenciaAseo=" & IsNumberNull(txtCostoReferenciaAseo.Text) & ",CargoFijoAseo=" & IsNumberNull(txtCargoFijoAseo.Text) & ", " _
       & " OtroValor =" & IsNumberNull(txtOtroValor.Text) & "," _
       & " OtroSubsidio =" & IsNumberNull(txtOtroSubsidio.Text) & "," _
       & " InteresMora=" & IsNumberNull(txtInteresMora.Text) & "," _
       & " PorcentajeFinanaciacion =" & IsNumberNull(txtPorcentajeFinanciacion.Text) & " " _
       & " WHERE id=" & Registro("id")
       
       BaseExecute SQL
       If gError = 0 Then
          MsgBox "Actualizado"
       End If
     Else
     
      SQL = "INSERT INTO uso (codigo,estrato,descripcion,RangoUno,RangoDos,RangoTres,ValorFijoAcueducto,ValorBasicoAcueducto, " _
      & " ValorComplementarioAcueducto,ValorSuntuarioAcueducto,SubsidioFijoAcueducto," _
      & " SubsidioBasicoAcueducto,IncrementoConsumoAcueducto,IncrementoFijoAcueducto,PorcentajeContribucionAcueducto, " _
      & " ValorFijoAlcantarillado,ValorBasicoAlcantarillado,IncrementoConsumoAlcantarillado,IncrementoFijoAlcantarillado, " _
      & " PorcentajeContribucionAlcantarillado,ValorBarridoAseo,ValorRecaudoAseo,ValorRecoleccionAseo,ValorDisposicionAseo, " _
      & " SubsidioAseo,IncrementoAseo,PorcentajeContribucionAseo,OtroValor,OtroSubsidio,InteresMora,PorcentajeFinanaciacion,CostoReferenciaAcueducto,CargoFijoAcueducto,ConsumoAcueducto, " _
      & " CostoReferenciaAlcantarillado,CargoFijoAlcantarillado,ConsumoAlcantarillado,CostoReferenciaAseo,CargoFijoAseo) VALUES ('" & Trim(txtCodigo.Text) & "', " _
      & " '" & Trim(txtEstrato.Text) & "','" & Trim(txtDescripcion.Text) & "'," _
      & " " & IsNumberNull(txtRangoUno.Text) & ", " & IsNumberNull(txtRangoDOS.Text) & ", " _
      & " " & IsNumberNull(txtRangoTRES.Text) & ", " & IsNumberNull(txtValorFijoAcueducto.Text) & ", " & IsNumberNull(txtValorBasicoAcueducto.Text) & ", " _
      & " " & IsNumberNull(txtValorComplementarioAcueducto.Text) & ", " & IsNumberNull(txtValorSuntuarioAcueducto.Text) & ", " _
      & " " & IsNumberNull(txtSubsidioFijoAcueducto.Text) & ", " & IsNumberNull(txtSubsidioBasicoAcueducto.Text) & ", " _
      & " " & IsNumberNull(txtIncrementoConsumoAcueducto.Text) & ", " & IsNumberNull(txtIncrementoFijoAcueducto.Text) & ", " _
      & " " & IsNumberNull(txtContribucionAcueducto.Text) & ", " & IsNumberNull(txtValorFijoAlcantarillado.Text) & ", " & IsNumberNull(txtValorBasicoAlcantarillado.Text) & ", " _
      & " " & IsNumberNull(txtIncrementoConsumoAlcantarillado.Text) & ", " & IsNumberNull(txtIncrementoFijoAlcantarillado.Text) & ", " _
      & " " & IsNumberNull(txtContribucionAlcantarillado.Text) & ", " & IsNumberNull(txtBarridoAseo.Text) & ", " _
      & " " & IsNumberNull(txtRecaudoAseo.Text) & ", " & IsNumberNull(txtRecoleccionAseo.Text) & ", " _
      & " " & IsNumberNull(txtDisposicionAseo.Text) & "," & IsNumberNull(txtSubsidioAseo.Text) & "," _
      & " " & IsNumberNull(txtIncrementoAseo.Text) & "," _
      & " " & IsNumberNull(txtContribucionAseo.Text) & "," & IsNumberNull(txtOtroValor.Text) & ", " _
      & " " & IsNumberNull(txtOtroSubsidio.Text) & "," & IsNumberNull(txtInteresMora.Text) & "," & IsNumberNull(txtPorcentajeFinanciacion.Text) & "," _
      & " " & IsNumberNull(txtCostoReferenciaAcueducto.Text) & "," & IsNumberNull(txtCargoFijoAcueducto.Text) & "," & IsNumberNull(txtConsumoAcueducto.Text) & ", " _
      & " " & IsNumberNull(txtCostoReferenciaAlcantarillado.Text) & "," & IsNumberNull(txtCargoFijoAlcantarillado.Text) & "," & IsNumberNull(txtConsumoAlcantarillado.Text) & ", " _
      & " " & IsNumberNull(txtCostoReferenciaAseo.Text) & "," & IsNumberNull(txtCargoFijoAseo.Text) & ")"
    
       BaseExecute SQL
       
       ilast = getLastID
       If gError = 0 Then
          MsgBox "Incluido"
          Registro.Close
          CargarRegistros
          SeekReg Registro, ilast, iPosition
          MostrarRegistro
       End If
    End If
End Sub
'''Desbloquea el Formulario en Edición
Private Sub Desbloquear()
    fraUso.Enabled = True
    FraControles.Enabled = False
    txtCodigo.SetFocus
    CmdEditar.Enabled = False
    CmdBuscar.Enabled = False
    CmdEliminar.Caption = "&Cancelar"
    cmdSalir.Enabled = False
    If Editar Then
       CmdEditar.Caption = "&Guardar"
       CmdEliminar.Caption = "&Cancelar"
       CmdEliminar.Enabled = True
       CmdEditar.Enabled = True
       CmdBuscar.Enabled = False
       cmdSalir.Enabled = False
       CmdNuevo.Enabled = False
    Else
        CmdNuevo.Caption = "&Guardar"
        CmdEliminar.Caption = "&Cancelar"
        CmdNuevo.Enabled = True
        CmdEliminar.Enabled = True
        CmdEditar.Enabled = False
        CmdBuscar.Enabled = False
        cmdSalir.Enabled = False
    End If
End Sub
'''Bloquea el formulario
Private Sub Bloquear()
    fraUso.Enabled = False
    FraControles.Enabled = True
    CmdEditar.Enabled = True
    CmdNuevo.Enabled = True
    CmdBuscar.Enabled = True
    cmdListados.Enabled = True
    CmdEliminar.Caption = "&Eliminar"
    cmdSalir.Enabled = True
End Sub
''
''
'''Procedimiento para ir al anterior registro
Private Sub CmdAnterior_Click()
    If Not Registro.BOF Then
         Registro.MovePrevious
         iPosition = iPosition - 1
         If Registro.BOF Then
            Registro.MoveFirst
            iPosition = 1
           End If
    MostrarRegistro
    End If
End Sub
Public Sub Busque(Criterio As String, countCriterio As String)
Dim R1 As ADODB.Recordset
Dim lsql As String

    If Criterio <> "" Then
       lsql = "SELECT count(*) FROM  uso " _
             & " WHERE  "
        lsql = lsql & " (" & countCriterio & ") "
        gFilter = countCriterio
        Set R1 = New ADODB.Recordset
        ExecuteSql R1, lsql
        gFilter = countCriterio
        CmdBuscar.Caption = "&Buscar*"
        iCount = R1(0)
        If iCount = 0 Then
            LimpiarFormulario
            LblCount.Caption = "0/0"
            MsgBox "No se encontraron equivalencias en la búsqueda"
            QuitarFilter
            Exit Sub
        End If
        iPosition = 1
        With Registro
            .Filter = Criterio
        End With
        MostrarRegistro
    End If
End Sub
''
Public Sub QuitarFilter()
Dim lsql As String
Dim Reg1 As ADODB.Recordset

    With Registro
        .Filter = ""
         gFilter = ""
        .Requery
        CmdBuscar.Caption = "&Buscar"
        If Not .BOF Then .MoveFirst
    End With
    lsql = "SELECT COUNT(*) FROM uso"
    Set Reg1 = New ADODB.Recordset
    ExecuteSql Reg1, lsql
    iCount = Reg1(0)
    iPosition = 1
    Reg1.Close
    Set Reg1 = Nothing
    MostrarRegistro
End Sub
''
Public Function ActivatedQuitar() As Boolean
    With Registro
        If .Filter <> 0 Then
            ActivatedQuitar = True
        Else
            ActivatedQuitar = False
        End If
    End With

End Function
Private Sub CmdBuscar_Click()
Dim i As Integer
Dim frmBuscar As frm_Busqueda
Dim ElemBusq As Integer

  gBusqueda(0, 0) = "codigo"
  gBusqueda(0, 1) = dbInteger
  gBusqueda(0, 2) = "Código"
  gBusqueda(0, 3) = "codigo"
  gBusqueda(0, 4) = "uso"

  gBusqueda(1, 0) = "estrato"
  gBusqueda(1, 1) = dbText
  gBusqueda(1, 2) = "Estrato"
  gBusqueda(1, 3) = "estrato"
  gBusqueda(1, 4) = "uso"

  gBusqueda(2, 0) = "descripcion"
  gBusqueda(2, 1) = dbText
  gBusqueda(2, 2) = "Descripción"
  gBusqueda(2, 3) = "descripcion"
  gBusqueda(2, 4) = "uso"

 


  Set frmBuscar = New frm_Busqueda
  ElemBusq = 2
  frmBuscar.Tag = Me.Name

  For i = 0 To ElemBusq
     frmBuscar.CmbCampo1.List(i) = gBusqueda(i, 2)
     frmBuscar.CmbCampo2.List(i) = gBusqueda(i, 2)
     frmBuscar.CmbCampo1.ItemData(i) = gBusqueda(i, 1)
     frmBuscar.CmbCampo2.ItemData(i) = gBusqueda(i, 1)
  Next i
  frmBuscar.CmbCampo1.ListIndex = 0
  frmBuscar.CmbCampo2.ListIndex = 0
  frmBuscar.Top = Me.Top
  frmBuscar.Left = Me.Left + Me.Width - 2500
  frmBuscar.Caption = "Búsqueda de Suscriptores"
  frmBuscar.Show 0, Me
  Set frmBuscar = Nothing
End Sub
''
''Private Sub CmdCambiar_Click()
''    txtClave.Locked = False
''    SQL = "UPDATE usuario SET clave='" & MD5(Trim(txtClave.Text)) & "', nombre='" & Trim(txtNombre.Text) & "' " _
''            & "WHERE id=" & Registro("id")

''    BaseExecute SQL
''
''End Sub
''
'''Procedimiento para Editar y Guardar un registro
Private Sub cmdEditar_Click()
Dim ilast As Long
    Editar = True 'Se establece verdadero para indicar que se está editando un registro
    If CmdEditar.Caption = "E&ditar" Then
        CmdEditar.Caption = "&Guardar"
        Desbloquear
        CmdNuevo.Enabled = False
        CmdEditar.Enabled = True
       Else
         If ValidarCampos Then
            CmdEditar.Caption = "E&ditar"
            GuardarRegistro
            ilast = Registro("id")
            Registro.Close
            CargarRegistros
            SeekReg Registro, ilast, iPosition
            MostrarRegistro
         End If
    End If
End Sub
'Procedimiento para Eliminar un registro de la tabla o cancelar una acción
Private Sub CmdEliminar_Click()
Dim Mensaje
   If CmdEliminar.Caption = "&Eliminar" Then
       Mensaje = MsgBox("Desea Eliminar el Suscriptor " + txtDescripcion.Text, vbDefaultButton2 + vbExclamation + vbYesNo)
       If Mensaje = vbYes Then
          SQL = "DELETE FROM uso WHERE id=" & Registro("id")
          BaseExecute SQL
          Registro.Close
          CargarRegistros
       End If
   Else
        Bloquear
        CmdNuevo.Enabled = True
        CmdNuevo.Caption = "&Nuevo"
        CmdEditar.Caption = "E&ditar"
        Registro.Close
        CargarRegistros
   End If
End Sub

Private Sub cmdListados_Click()
Dim Report As frm_Reporte

    Set Report = New frm_Reporte
               


     Screen.MousePointer = vbHourglass
     Report.UpdateReport "", "", "rptusosTarifas.rpt", False, "LISTADO TARIFAS", False
     Report.Show
     Screen.MousePointer = vbDefault
     
    
End Sub

Private Sub CmdNuevo_Click()
     Editar = False
     If CmdNuevo.Caption = "&Nuevo" Then
        Desbloquear
        LimpiarFormulario
        CmdNuevo.Caption = "&Guardar"
        iPosition = iCount
        LblCount.Caption = iPosition & "/" & iCount
        Else
         If ValidarCampos Then
            CmdNuevo.Caption = "&Nuevo"
            Bloquear
            GuardarRegistro
         End If
     End If
End Sub
''
''
'''Procedimiento para avanzar al primer formulario
Private Sub CmdPrimero_Click()
    If Not Registro.BOF Then
       Registro.MoveFirst
       iPosition = 1
       MostrarRegistro
    End If
End Sub
''
'''Procedimiento que cierra el formulario
''Private Sub cmdSalir_Click()
''    Unload Me
''End Sub
'''Procedimiento para ir al siguiente registro
Private Sub CmdSiguiente_Click()
    If Not Registro.EOF Then
       Registro.MoveNext
       iPosition = iPosition + 1
       If Registro.EOF Then
          iPosition = iCount
          Registro.MoveLast
       End If
       MostrarRegistro
    End If
End Sub
'Procedimiento para ir al último registro
Private Sub CmdUltimo_Click()
If Not Registro.EOF Then
    Registro.MoveLast
    iPosition = iCount
    MostrarRegistro
    End If
End Sub
'''Procedimiento que carga los registros en la variable Registro
Private Sub CargarRegistros()
Dim RMax As ADODB.Recordset

    lsql = "SELECT Count(*) FROM uso "
    If gFilter <> "" Then lsql = lsql & " WHERE " & gFilter
    Set RMax = New ADODB.Recordset
    ExecuteSql RMax, lsql
    If gError = 0 Then
       If Not RMax.BOF Then
          iCount = RMax(0)
          iPosition = 1
          If iCount = 0 Then
             Registro.Filter = ""
             gFilter = ""
             CmdBuscar.Caption = "&Buscar"
             lsql = "SELECT Count(*) FROM uso "
             RMax.Close
             ExecuteSql RMax, lsql
             iCount = RMax(0)
          End If
          gSql = "SELECT * FROM uso"
          gOrder = " id "
          lsql = gSql & " ORDER BY " & gOrder
          Bloquear
          ExecuteSql Registro, lsql
          If gError = 0 Then
             If Not Registro.BOF Then
                MostrarRegistro
              Else
               LimpiarFormulario
               cmdListados.Enabled = False
               CmdEditar.Enabled = False
               CmdBuscar.Enabled = False
               CmdEliminar.Enabled = False
               LblCount.Caption = 0 & "/" & 0
             End If
          End If
       End If
       RMax.Close
    End If
    
    Set RMax = Nothing

End Sub
'
Private Sub Form_Load()
    ' cargarUsos
    Set Registro = New ADODB.Recordset
    gFilter = ""
        CargarRegistros
End Sub
''
Private Sub Form_Unload(Cancel As Integer)
    Registro.Close
    Set Registro = Nothing
End Sub
''
''
''
''
''
'
Private Sub cmdSalir_Click()
    Unload Me
End Sub



