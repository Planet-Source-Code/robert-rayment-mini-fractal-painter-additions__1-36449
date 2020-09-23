VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   7680
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   11805
   DrawStyle       =   5  'Transparent
   Icon            =   "RRLsys.frx":0000
   LinkTopic       =   "Form1"
   MinButton       =   0   'False
   ScaleHeight     =   512
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   787
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox PICHandle 
      BackColor       =   &H0080FF80&
      Height          =   165
      Left            =   11415
      ScaleHeight     =   7
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   5
      TabIndex        =   73
      Top             =   7125
      Width           =   135
   End
   Begin VB.OptionButton OptClear 
      Height          =   285
      Left            =   2760
      Picture         =   "RRLsys.frx":0E42
      Style           =   1  'Graphical
      TabIndex        =   48
      ToolTipText     =   "DblClick to Clear"
      Top             =   705
      Width           =   315
   End
   Begin VB.CommandButton cmdUndoRedo 
      Height          =   285
      Left            =   3150
      Picture         =   "RRLsys.frx":1384
      Style           =   1  'Graphical
      TabIndex        =   46
      ToolTipText     =   "Undo/Redo"
      Top             =   705
      Width           =   270
   End
   Begin VB.Frame fraAxiom 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Choice"
      Height          =   915
      Left            =   60
      TabIndex        =   35
      Top             =   45
      Width           =   915
      Begin VB.Image Image1 
         BorderStyle     =   1  'Fixed Single
         Height          =   480
         Left            =   195
         Top             =   270
         Width           =   480
      End
   End
   Begin VB.Frame fraAxiomSelector 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Axiom selector"
      Height          =   3000
      Left            =   180
      TabIndex        =   32
      Top             =   960
      Width           =   3150
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   11
         Left            =   2340
         Picture         =   "RRLsys.frx":18C6
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   2040
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   10
         Left            =   1620
         Picture         =   "RRLsys.frx":2508
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   2040
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   9
         Left            =   900
         Picture         =   "RRLsys.frx":314A
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   2040
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   8
         Left            =   180
         Picture         =   "RRLsys.frx":3D8C
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   2040
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   7
         Left            =   2340
         Picture         =   "RRLsys.frx":49CE
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   1140
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   6
         Left            =   1620
         Picture         =   "RRLsys.frx":5610
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   1140
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   5
         Left            =   840
         Picture         =   "RRLsys.frx":6252
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   1140
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   4
         Left            =   180
         Picture         =   "RRLsys.frx":6E94
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   1140
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   3
         Left            =   2280
         Picture         =   "RRLsys.frx":7AD6
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   240
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   2
         Left            =   1560
         Picture         =   "RRLsys.frx":8718
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   240
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   1
         Left            =   840
         Picture         =   "RRLsys.frx":935A
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   240
         Width           =   555
      End
      Begin VB.CommandButton cmdAxiom 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         Height          =   555
         Index           =   0
         Left            =   180
         Picture         =   "RRLsys.frx":9F9C
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   240
         Width           =   555
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "11"
         Height          =   195
         Index           =   11
         Left            =   2520
         TabIndex        =   60
         Top             =   2640
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "10"
         Height          =   195
         Index           =   10
         Left            =   1800
         TabIndex        =   59
         Top             =   2640
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "9"
         Height          =   195
         Index           =   9
         Left            =   1080
         TabIndex        =   58
         Top             =   2640
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "8"
         Height          =   195
         Index           =   8
         Left            =   390
         TabIndex        =   57
         Top             =   2640
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "7"
         Height          =   195
         Index           =   7
         Left            =   2535
         TabIndex        =   56
         Top             =   1740
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "6"
         Height          =   195
         Index           =   6
         Left            =   1800
         TabIndex        =   55
         Top             =   1740
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "5"
         Height          =   195
         Index           =   5
         Left            =   1050
         TabIndex        =   54
         Top             =   1740
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "4"
         Height          =   195
         Index           =   4
         Left            =   360
         TabIndex        =   53
         Top             =   1740
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "3"
         Height          =   195
         Index           =   3
         Left            =   2520
         TabIndex        =   52
         Top             =   840
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "2"
         Height          =   195
         Index           =   2
         Left            =   1785
         TabIndex        =   51
         Top             =   840
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "1"
         Height          =   195
         Index           =   1
         Left            =   1020
         TabIndex        =   50
         Top             =   840
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   360
         TabIndex        =   49
         Top             =   840
         Width           =   255
      End
   End
   Begin VB.Frame fraSelectColors 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Select start && end colors"
      Height          =   660
      Left            =   1065
      TabIndex        =   28
      Top             =   45
      Width           =   2400
      Begin VB.CommandButton cmdSelectColors 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Select"
         Height          =   345
         Left            =   1695
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   210
         Width           =   555
      End
      Begin VB.Label LabColors 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "End"
         Height          =   300
         Index           =   1
         Left            =   900
         TabIndex        =   31
         Top             =   255
         Width           =   660
      End
      Begin VB.Label LabColors 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Start"
         Height          =   300
         Index           =   0
         Left            =   135
         TabIndex        =   30
         Top             =   255
         Width           =   645
      End
   End
   Begin VB.PictureBox PICBUFF 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   4650
      ScaleHeight     =   33
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   45
      TabIndex        =   25
      Top             =   60
      Width           =   675
   End
   Begin VB.PictureBox PICBACK 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   3855
      ScaleHeight     =   33
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   45
      TabIndex        =   24
      Top             =   60
      Width           =   675
   End
   Begin VB.Frame fraAxiomParams 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Axiom parameters"
      Height          =   2805
      Left            =   60
      TabIndex        =   1
      Top             =   990
      Width           =   3390
      Begin VB.CommandButton cmdSwapSign 
         BackColor       =   &H0080C0FF&
         Caption         =   "1"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   5
         Left            =   2910
         Style           =   1  'Graphical
         TabIndex        =   70
         ToolTipText     =   "=1"
         Top             =   2175
         Width           =   165
      End
      Begin VB.CommandButton cmdSwapSign 
         BackColor       =   &H0080C0FF&
         Caption         =   "1"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   4
         Left            =   2895
         Style           =   1  'Graphical
         TabIndex        =   69
         ToolTipText     =   "=1"
         Top             =   1860
         Width           =   165
      End
      Begin VB.CommandButton cmdSwapSign 
         BackColor       =   &H0080C0FF&
         Caption         =   "s"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   2895
         Style           =   1  'Graphical
         TabIndex        =   68
         ToolTipText     =   "+/-"
         Top             =   1560
         Width           =   165
      End
      Begin VB.CommandButton cmdSwapSign 
         BackColor       =   &H0080C0FF&
         Caption         =   "s"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   2
         Left            =   2895
         Style           =   1  'Graphical
         TabIndex        =   67
         ToolTipText     =   "+/-"
         Top             =   1275
         Width           =   165
      End
      Begin VB.CommandButton cmdSwapSign 
         BackColor       =   &H0080C0FF&
         Caption         =   "s"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   1
         Left            =   2880
         Style           =   1  'Graphical
         TabIndex        =   66
         ToolTipText     =   "+/-"
         Top             =   1020
         Width           =   165
      End
      Begin VB.CommandButton cmdSwapSign 
         BackColor       =   &H0080C0FF&
         Caption         =   "s"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   2880
         Style           =   1  'Graphical
         TabIndex        =   65
         ToolTipText     =   "+/-"
         Top             =   630
         Width           =   165
      End
      Begin VB.CommandButton cmdSwapAngles 
         BackColor       =   &H00C0E0FF&
         Height          =   495
         Left            =   3105
         Picture         =   "RRLsys.frx":A356
         Style           =   1  'Graphical
         TabIndex        =   47
         ToolTipText     =   "Swap angles"
         Top             =   615
         Width           =   195
      End
      Begin VB.CommandButton cmdInvoke 
         BackColor       =   &H0080C0FF&
         Caption         =   "Invoke Level"
         Height          =   270
         Left            =   1665
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   2460
         Width           =   1110
      End
      Begin VB.CommandButton cmdSetAxiomDefaults 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Set Defaults"
         Height          =   270
         Left            =   285
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   2460
         Width           =   1095
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   195
         Index           =   6
         LargeChange     =   100
         Left            =   1830
         Max             =   20000
         TabIndex        =   22
         Top             =   2145
         Width           =   885
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   195
         Index           =   5
         LargeChange     =   100
         Left            =   1815
         Max             =   20000
         TabIndex        =   21
         Top             =   1815
         Width           =   885
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   195
         Index           =   4
         LargeChange     =   2
         Left            =   1815
         Max             =   50
         Min             =   -50
         TabIndex        =   20
         Top             =   1545
         Width           =   885
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   195
         Index           =   3
         LargeChange     =   2
         Left            =   1815
         Max             =   50
         Min             =   -50
         TabIndex        =   19
         Top             =   1275
         Width           =   885
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   195
         Index           =   2
         LargeChange     =   5
         Left            =   1815
         Max             =   90
         Min             =   -90
         TabIndex        =   18
         Top             =   1005
         Width           =   885
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   195
         Index           =   1
         LargeChange     =   5
         Left            =   1725
         Max             =   90
         Min             =   -90
         TabIndex        =   17
         Top             =   615
         Width           =   885
      End
      Begin VB.TextBox Text1 
         Height          =   270
         Index           =   6
         Left            =   975
         TabIndex        =   16
         Text            =   "Text1"
         Top             =   2130
         Width           =   675
      End
      Begin VB.TextBox Text1 
         Height          =   270
         Index           =   5
         Left            =   975
         TabIndex        =   15
         Text            =   "Text1"
         Top             =   1800
         Width           =   675
      End
      Begin VB.TextBox Text1 
         Height          =   270
         Index           =   4
         Left            =   945
         TabIndex        =   14
         Text            =   "Text1"
         Top             =   1500
         Width           =   675
      End
      Begin VB.TextBox Text1 
         Height          =   270
         Index           =   3
         Left            =   945
         TabIndex        =   13
         Text            =   "Text1"
         Top             =   1200
         Width           =   675
      End
      Begin VB.TextBox Text1 
         Height          =   240
         Index           =   2
         Left            =   945
         TabIndex        =   12
         Text            =   "Text1"
         Top             =   945
         Width           =   675
      End
      Begin VB.TextBox Text1 
         Height          =   270
         Index           =   1
         Left            =   945
         TabIndex        =   11
         Text            =   "Text1"
         Top             =   555
         Width           =   675
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   0
         Left            =   945
         TabIndex        =   10
         Text            =   "Text1"
         Top             =   240
         Width           =   675
      End
      Begin VB.HScrollBar HScroll1 
         Height          =   195
         Index           =   0
         Left            =   1710
         Max             =   9
         Min             =   1
         TabIndex        =   9
         Top             =   270
         Value           =   1
         Width           =   1140
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Y-step mult"
         Height          =   210
         Index           =   6
         Left            =   120
         TabIndex        =   8
         Top             =   2160
         Width           =   795
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "X-step mult"
         Height          =   210
         Index           =   5
         Left            =   135
         TabIndex        =   7
         Top             =   1845
         Width           =   795
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Y-step"
         Height          =   210
         Index           =   4
         Left            =   150
         TabIndex        =   6
         Top             =   1605
         Width           =   795
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "X-step"
         Height          =   210
         Index           =   3
         Left            =   105
         TabIndex        =   5
         Top             =   1245
         Width           =   795
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Level"
         Height          =   195
         Index           =   0
         Left            =   105
         TabIndex        =   4
         Top             =   270
         Width           =   795
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "+ve Angle"
         Height          =   210
         Index           =   1
         Left            =   120
         TabIndex        =   3
         Top             =   585
         Width           =   795
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "-ve Angle"
         Height          =   210
         Index           =   2
         Left            =   105
         TabIndex        =   2
         Top             =   885
         Width           =   795
      End
   End
   Begin VB.PictureBox PIC 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   6990
      Left            =   3585
      ScaleHeight     =   466
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   520
      TabIndex        =   0
      Top             =   285
      Width           =   7800
   End
   Begin VB.Frame fraAmp 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Amplitude"
      Height          =   825
      Left            =   90
      TabIndex        =   61
      Top             =   1380
      Width           =   3225
      Begin VB.HScrollBar HScrollAmp 
         Height          =   255
         LargeChange     =   4
         Left            =   1545
         Max             =   64
         Min             =   4
         TabIndex        =   63
         Top             =   315
         Value           =   4
         Width           =   960
      End
      Begin VB.TextBox txtAmp 
         Height          =   285
         Left            =   480
         TabIndex        =   62
         Text            =   "txtAmp"
         Top             =   270
         Width           =   495
      End
   End
   Begin VB.Label LabWH 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "WxH"
      Height          =   240
      Left            =   60
      TabIndex        =   72
      Top             =   3945
      Width           =   1575
   End
   Begin VB.Label LabXY 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "XP-Pos"
      Height          =   255
      Left            =   1755
      TabIndex        =   71
      Top             =   3945
      Width           =   1695
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00C0E0FF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1260
      Left            =   435
      TabIndex        =   64
      Top             =   2250
      Width           =   2370
   End
   Begin VB.Label Label2 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Bytes && secs"
      Height          =   240
      Left            =   1065
      TabIndex        =   27
      Top             =   720
      Width           =   1635
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuSaveBMP 
         Caption         =   "Save as BMP"
      End
      Begin VB.Menu brk0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLoadPicture 
         Caption         =   "Load picture"
      End
      Begin VB.Menu brk1 
         Caption         =   "-"
      End
      Begin VB.Menu brk2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuAxiom 
      Caption         =   " AXIOMS "
   End
   Begin VB.Menu mnuDrawWidth 
      Caption         =   "DrawWidth"
   End
   Begin VB.Menu mnuInstructions 
      Caption         =   "Instructions"
   End
   Begin VB.Menu mnuVBASM 
      Caption         =   "VB"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' RRLSys.frm

' Mini Fractal Painter Demo
' by Robert Rayment July 2002

' Correction to no drive load/save
' 1/8/02

' Correction to file load/save
' 30/7/02

' Addition
' 1. DrawWidth  NB VB & ASM differ slightly for widths > 1
' 2. Faster string-byte handling

'    String to bytes:
'    CopyMemory ByteArr(SIndex), ByVal AString$, Len

'    Bytes to string:
'    AString$ = StrConv(ByteArr(), vbUnicode)
'    instead use:-
'    AString$ = Space$(Len)
'    CopyMemory ByVal AString$, ByteArr(SIndex), Len

' For copying strings to byte arrays & vice versa see:
' PLAY VB’S STRINGS
' by Francesco Balena
' This article has appeared in the BlackBelt column of the January 1998 issue of
' Visual Basic Programming Journal, by Fawcette Technical Publications.

' Ref: "LSystems" by Loreno Heer PSC
'  Use of the VB6 Replace function
'  to generate LSys draw-strings.

' LSystem axioms mostly from FRACTINT. (Search Web for FRACTINT)
' LSystem parameters set for this program by trial & error.


Option Base 1
DefLng A-W     ' All variables Long
DefSng X-Z     ' unless singles
               ' unless otherwise defined

Dim zInitX, zInitY   ' For resizing PIC
Dim PICYNoise(), ymin, ymax, xatymin, Amp ' For SineNoise

Private Sub mnuDrawWidth_Click()
frmDrawWidth.Show 'vbModal
End Sub

Private Sub mnuInstructions_Click()
A$ = A$ + "1. Select an Axiom from the AXIOMS menu." & vbCrLf
A$ = A$ + " " & vbCrLf
A$ = A$ + "2. Left-click on picbox to draw using the start & end " & vbCrLf
A$ = A$ + "    colors or just the start color for Axioms 10 & 11." & vbCrLf
A$ = A$ + " " & vbCrLf
A$ = A$ + "3. After changing the Axiom Level press Invoke before " & vbCrLf
A$ = A$ + "    left-clicking the picbox." & vbCrLf
A$ = A$ + " " & vbCrLf
A$ = A$ + "4. Right-click to fill picbox with the start color while" & vbCrLf
A$ = A$ + "    surrounded by color at the click point. " & vbCrLf
A$ = A$ + " " & vbCrLf
A$ = A$ + "5. The special gradient fills Axioms 8 & 9 shade downwards" & vbCrLf
A$ = A$ + "    and upwards respectively. Axiom 10 draws a range of hills" & vbCrLf
A$ = A$ + "    across the picbox filled in with the start color & Axiom 11" & vbCrLf
A$ = A$ + "    draws a line across the picbox. NB these fills overwrite" & vbCrLf
A$ = A$ + "    any image in the way, so, if wanted, do them first." & vbCrLf
A$ = A$ + " " & vbCrLf
A$ = A$ + "6.  Also see Notes.txt " & vbCrLf

MsgBox A$, vbOKOnly, "Instructions"
End Sub

Private Sub ReadAxioms()
On Error GoTo NoAxiomFile
Open PathSpec$ & "Axioms.txt" For Input As #1
'' Read file into Read$(), skipping blank & comment lines
ReDim Read$(1)
N = 1
Do Until EOF(1)
   Line Input #1, A$: A$ = Trim$(A$)
   If A$ <> "" And Left$(A$, 1) <> "'" Then
      Read$(N) = A$
      N = N + 1
      ReDim Preserve Read$(N)
   End If
Loop
Close
On Error GoTo AxiomError
NTOT = N - 1
ReDim Preserve Read$(NTOT)
'' AxiomIndex
'' Axiom$
'' NumAxiomStrings
'' P$ [Q$][R$,S$]
'' LevelMax,Level
'' zAngP,zAngN
'' XStep,YStep
'' XStepMult,YStepMult
N = 1
Do
   If N > NTOT Then Exit Do
   ' AxiomIndex
   Index = Val(Read$(N)): N = N + 1
   ' Axiom$
   Axiom$(Index) = Read$(N): N = N + 1
   ' Could check matching brackets [] here.
   ' NumAxiomStrings
   NumAxiomStrings(Index) = Val(Read$(N)): N = N + 1
   ' P$, [P$,Q$] or [P$,Q$,R$,S$]
   P$(Index) = Read$(N): N = N + 1
   If NumAxiomStrings(Index) = 2 Then
      Q$(Index) = Read$(N): N = N + 1
   ElseIf NumAxiomStrings(Index) = 4 Then
      Q$(Index) = Read$(N): N = N + 1
      R$(Index) = Read$(N): N = N + 1
      S$(Index) = Read$(N): N = N + 1
   End If
   ' LevelMax,Level
   A$ = Read$(N): N = N + 1
   pcomma = InStr(1, A$, ",")
   If pcomma = 0 Then
      MsgBox "Axiom file error, Check items", , "Error"
      Unload Me
      End
   End If
   LevelMax(Index) = Val(Left$(A$, pcomma - 1))
   ' All the following parameters can be
   ' changed by the user
   LevelDefault(Index) = Val(Mid$(A$, pcomma + 1))
   Level(Index) = LevelDefault(Index)
   ' zAngP,zAngN
   A$ = Read$(N): N = N + 1
   pcomma = InStr(1, A$, ",")
   If pcomma = 0 Then
      MsgBox "Axiom file error, Check items", , "Error"
      Unload Me
      End
   End If
   zAngPDefault(Index) = Val(Left$(A$, pcomma - 1))
   zAngP(Index) = zAngPDefault(Index)
   zAngNDefault(Index) = Val(Mid$(A$, pcomma + 1))
   zAngN(Index) = zAngNDefault(Index)
   ' XStep,YStep
   A$ = Read$(N): N = N + 1
   pcomma = InStr(1, A$, ",")
   If pcomma = 0 Then
      MsgBox "Axiom file error, Check items", , "Error"
      Unload Me
      End
   End If
   XStepDefault(Index) = Val(Left$(A$, pcomma - 1))
   XStep(Index) = XStepDefault(Index)
   YStepDefault(Index) = Val(Mid$(A$, pcomma + 1))
   YStep(Index) = YStepDefault(Index)
   ' XStepMult,YStepMult
   A$ = Read$(N): N = N + 1
   pcomma = InStr(1, A$, ",")
   If pcomma = 0 Then
      MsgBox "Axiom file error, Check items", , "Error"
      Unload Me
      End
   End If
   XStepMultDefault(Index) = Val(Left$(A$, pcomma - 1))
   XStepMult(Index) = XStepMultDefault(Index)
   YStepMultDefault(Index) = Val(Mid$(A$, pcomma + 1))
   YStepMult(Index) = YStepMultDefault(Index)
Loop

Erase Read$
Exit Sub
'==========
AxiomError:
MsgBox "An error in Axiom.txt file found"
Unload Me
End
'============
NoAxiomFile:
Close
MsgBox "No Axiom.txt file found"
Unload Me
End
End Sub

Private Sub cmdAxiom_Click(Index As Integer)
' Default values

' NB if the default axioms are changed need
' to check that the brackets [ & ] are matched!

AxiomIndex = Index

Caption = "Axiom" & Str$(AxiomIndex)

' Show selection
Image1.Picture = cmdAxiom(AxiomIndex).Picture

If AxiomIndex < 8 Then

   ShowParameters
   ExpandedAxiom$ = Axiom$(AxiomIndex)
   
   Select Case NumAxiomStrings(AxiomIndex)
   Case 1
      For I = 1 To Level(AxiomIndex)
         ExpandedAxiom$ = Replace(ExpandedAxiom$, "F", P$(AxiomIndex))
      Next I
   Case 2
      For I = 1 To Level(AxiomIndex)
         ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", P$(AxiomIndex))
         ExpandedAxiom$ = Replace(ExpandedAxiom$, "F", Q$(AxiomIndex))
      Next I
      ' Remove redundant Ps
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", "")
   Case 4
      For I = 1 To Level(AxiomIndex)
         ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", R$(AxiomIndex))
         ExpandedAxiom$ = Replace(ExpandedAxiom$, "Q", S$(AxiomIndex))
   
         ExpandedAxiom$ = Replace(ExpandedAxiom$, "R", P$(AxiomIndex))
         ExpandedAxiom$ = Replace(ExpandedAxiom$, "S", Q$(AxiomIndex))
      Next I
      ' Remove redundant P,Q,R,Ss
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", "")
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "Q", "")
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "R", "")
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "S", "")
   End Select

   LL = Len(ExpandedAxiom$)
   Label2.Caption = Str$(LL) & " B"
   If LL = 0 Then Exit Sub
   ' Transfer characters to byte array
   ReDim ByteArray(LL)
   CopyMemory ByteArray(1), ByVal ExpandedAxiom$, LL
   ExpandedAxiom$ = ""
   ' Count number of Fs
   NumFs = 0
   For I = 1 To LL
      If ByteArray(I) = 70 Then NumFs = NumFs + 1
   Next I

End If

Select Case AxiomIndex
Case 8    ' Shade downwards
   Caption = "Shade downwards"
   fraAxiomParams.Visible = False
   fraAmp.Visible = False
Case 9    ' Shade upwards
   Caption = "Shade upwards"
   fraAxiomParams.Visible = False
   fraAmp.Visible = False
Case 10   ' Rnd line
   Caption = "Hills"
   fraAxiomParams.Visible = False
   fraAmp.Visible = True
Case 11   ' LINE
   Caption = "Line"
   fraAxiomParams.Visible = False
   fraAmp.Visible = False
End Select

fraAxiomSelector.Visible = False
End Sub

Private Sub ShowParameters()
HScroll1(0).Value = Level(AxiomIndex)
Text1(0).Text = Level(AxiomIndex)
HScroll1(1).Value = zAngP(AxiomIndex)
Text1(1).Text = zAngP(AxiomIndex)
HScroll1(2).Value = zAngN(AxiomIndex)
Text1(2).Text = zAngN(AxiomIndex)
HScroll1(3).Value = XStep(AxiomIndex) * 10
Text1(3).Text = XStep(AxiomIndex)
HScroll1(4).Value = YStep(AxiomIndex) * 10
Text1(4).Text = YStep(AxiomIndex)
HScroll1(5).Value = XStepMult(AxiomIndex) * 10000
Text1(5).Text = XStepMult(AxiomIndex)
HScroll1(6).Value = YStepMult(AxiomIndex) * 10000
Text1(6).Text = YStepMult(AxiomIndex)
DoEvents
End Sub

Private Sub HScroll1_Change(Index As Integer)
' Setting Axiom params:-
' Level
' zAngP  zAngN
' XStep  YStep
' XStepMult YStepMult
Select Case Index
Case 0
   ' Limit max level to an ExpandedAxiom$ of about 1MB
   If HScroll1(0).Value > LevelMax(AxiomIndex) Then
     HScroll1(0).Value = LevelMax(AxiomIndex)
   End If
   Text1(Index).Text = HScroll1(Index).Value
   Level(AxiomIndex) = Text1(Index).Text
Case 1
   Text1(Index).Text = HScroll1(Index).Value
   zAngP(AxiomIndex) = Text1(Index).Text
Case 2
   Text1(Index).Text = HScroll1(Index).Value
   zAngN(AxiomIndex) = Text1(Index).Text
Case 3
   Text1(Index).Text = HScroll1(Index).Value / 10
   XStep(AxiomIndex) = Text1(Index).Text
Case 4
   Text1(Index).Text = HScroll1(Index).Value / 10
   YStep(AxiomIndex) = Text1(Index).Text
Case 5
   Text1(Index).Text = HScroll1(Index).Value / 10000
   XStepMult(AxiomIndex) = Text1(Index).Text
Case 6
   Text1(Index).Text = HScroll1(Index).Value / 10000
   YStepMult(AxiomIndex) = Text1(Index).Text
End Select
End Sub

Private Sub cmdInvoke_Click()
' To re-expand Axiom$ when Level is changed
' This bit of code is copied from cmdAxiom_Click

Select Case NumAxiomStrings(AxiomIndex)
Case 1
   ExpandedAxiom$ = Axiom$(AxiomIndex)
   For I = 1 To Level(AxiomIndex)
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "F", P$(AxiomIndex))
   Next I
Case 2
   ExpandedAxiom$ = Axiom$(AxiomIndex)
   For I = 1 To Level(AxiomIndex)
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", P$(AxiomIndex))
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "F", Q$(AxiomIndex))
   Next I
   ' Remove redundant Ps
   ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", "")
Case 4
   ExpandedAxiom$ = Axiom$(AxiomIndex)
   For I = 1 To Level(AxiomIndex)
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", R$(AxiomIndex))
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "Q", S$(AxiomIndex))

      ExpandedAxiom$ = Replace(ExpandedAxiom$, "R", P$(AxiomIndex))
      ExpandedAxiom$ = Replace(ExpandedAxiom$, "S", Q$(AxiomIndex))
   Next I
   ' Remove redundant P,Q,R,Ss
   ExpandedAxiom$ = Replace(ExpandedAxiom$, "P", "")
   ExpandedAxiom$ = Replace(ExpandedAxiom$, "Q", "")
   ExpandedAxiom$ = Replace(ExpandedAxiom$, "R", "")
   ExpandedAxiom$ = Replace(ExpandedAxiom$, "S", "")
End Select
   
   LL = Len(ExpandedAxiom$)
   Label2.Caption = Str$(LL) & " B"
   If LL = 0 Then Exit Sub
   ' Transfer characters to byte array
   ReDim ByteArray(LL)
   CopyMemory ByteArray(1), ByVal ExpandedAxiom$, LL
   ExpandedAxiom$ = ""
   ' Count number of Fs
   NumFs = 0
   For I = 1 To LL
      If ByteArray(I) = 70 Then NumFs = NumFs + 1
   Next I

End Sub

Private Sub cmdSelectColors_Click()
'frmColor.Hide    ' Allows vbModal
frmColor.Show ', Me 'vbModal
End Sub

Private Sub cmdSetAxiomDefaults_Click()
Level(AxiomIndex) = LevelDefault(AxiomIndex)
zAngP(AxiomIndex) = zAngPDefault(AxiomIndex)
zAngN(AxiomIndex) = zAngNDefault(AxiomIndex)
XStep(AxiomIndex) = XStepDefault(AxiomIndex)
YStep(AxiomIndex) = YStepDefault(AxiomIndex)
XStepMult(AxiomIndex) = XStepMultDefault(AxiomIndex)
YStepMult(AxiomIndex) = YStepMultDefault(AxiomIndex)

cmdAxiom_Click CInt(AxiomIndex)
End Sub

Private Sub cmdSwapAngles_Click()
Z = zAngP(AxiomIndex)
zAngP(AxiomIndex) = zAngN(AxiomIndex)
zAngN(AxiomIndex) = Z
HScroll1(1).Value = zAngP(AxiomIndex)
HScroll1(2).Value = zAngN(AxiomIndex)
End Sub

Private Sub cmdSwapSign_Click(Index As Integer)
' Swap sign or set multipliers to 1
Select Case Index
Case 0   ' zAngP
   zAngP(AxiomIndex) = -zAngP(AxiomIndex)
   HScroll1(1).Value = zAngP(AxiomIndex)
Case 1   ' zAngN
   zAngN(AxiomIndex) = -zAngN(AxiomIndex)
   HScroll1(2).Value = zAngN(AxiomIndex)
Case 2   ' XStep
   XStep(AxiomIndex) = -XStep(AxiomIndex)
   HScroll1(3).Value = XStep(AxiomIndex) * 10
Case 3   ' YStep
   YStep(AxiomIndex) = -YStep(AxiomIndex)
   HScroll1(4).Value = YStep(AxiomIndex) * 10
Case 4   ' XStepMult set = 1
   XStepMult(AxiomIndex) = 1
   HScroll1(5).Value = 10000
Case 5   ' YStepMult set = 1
   YStepMult(AxiomIndex) = 1
   HScroll1(6).Value = 10000
End Select
End Sub

Private Sub cmdUndoRedo_Click()
' Need 2 extra picboxes to do a pic swap

res = BitBlt(PICBUFF.HDC, 0, 0, PIC.Width, PIC.Height, _
   PIC.HDC, 0, 0, vbSrcCopy)
res = BitBlt(PIC.HDC, 0, 0, PIC.Width, PIC.Height, _
   PICBACK.HDC, 0, 0, vbSrcCopy)
res = BitBlt(PICBACK.HDC, 0, 0, PIC.Width, PIC.Height, _
   PICBUFF.HDC, 0, 0, vbSrcCopy)
PIC.Refresh

'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
End Sub

Private Sub Form_Load()

Caption = "Mini-Fractal Painter  by Robert Rayment"

'Get app path
PathSpec$ = App.Path
If Right$(PathSpec$, 1) <> "\" Then PathSpec$ = PathSpec$ & "\"
FPath$ = PathSpec$  ' FPath$ for frmLoadSave

' For recovering from no drive
frmLoadSave.Drive1.Drive = PathSpec$
frmLoadSave.Dir1.Path = PathSpec$
frmLoadSave.File1.Path = PathSpec$
PrevDrive$ = frmLoadSave.Drive1.Drive
Unload frmLoadSave


ReadAxioms
' Assumes 4000 pushed states is sufficient
' Only needed for VB
ReDim zSaveState(4000)

Top = 100
Left = 15

' Hide back up picboxes & frames
PICBACK.Visible = False
PICBUFF.Visible = False
fraAxiomSelector.Visible = False
fraAxiomParams.Visible = False
fraAmp.Visible = False

A$ = ""
A$ = A$ + "Mini-Fractal Painter" & vbCrLf
A$ = A$ + vbCrLf
A$ = A$ + "  by Robert Rayment" & vbCrLf
Label4.Caption = A$

Show

PIC.Cls

INITControlsAndValues

ASM = False

' Load bin machine code
Loadmcode PathSpec$ & "LSysDraw.bin", LSYSMC()
ptrMC = VarPtr(LSYSMC(1))

End Sub

Private Sub INITControlsAndValues()
' Position controls   T&E
For I = 0 To 6
   Label1(I).Left = 105 - 2
   Label1(I).Height = 195 - 2
   Label1(I).Width = 795 - 2

   Text1(I).Left = 945 - 15
   Text1(I).Height = 240 - 15
   Text1(I).Width = 675 - 15
   Text1(I).Enabled = False
   
   HScroll1(I).Left = 1710 - 45
   HScroll1(I).Height = 195
   HScroll1(I).Width = 1140
Next I

Label1(0).Top = 285
Text1(0).Top = 240
HScroll1(0).Top = 270
cmdSwapAngles.Left = 3150 - 45

cmdSwapSign(0).Top = 320 + 300
cmdSwapSign(0).Left = 2940 - 45

For I = 2 To 6
   Label1(I).Top = Label1(I - 1).Top + 300
   Text1(I).Top = Text1(I - 1).Top + 300
   HScroll1(I).Top = HScroll1(I - 1).Top + 300
   cmdSwapSign(I - 1).Left = 2940 - 45
   cmdSwapSign(I - 1).Top = cmdSwapSign(I - 2).Top + 300
Next I

' Init colors
StartColor = RGB(80, 100, 80)
LabColors(0).BackColor = StartColor
EndColor = RGB(80, 255, 80)
LabColors(1).BackColor = EndColor
' Init Amp for SineNoise
Amp = 16
HScrollAmp.Value = 16
' Init DrawWidth
DW = 1

   ' Seems necessary to initiate later ExtFloodFills
   PIC.DrawStyle = vbSolid
   PIC.DrawMode = 13
   PIC.DrawWidth = 1
   PIC.FillColor = RGB(255, 255, 255)
   FillPtcul& = PIC.Point(100, 100)
   FLOODFILLSURFACE = 1
   'Fills with FillColor so long as point surrounded by FillPtcul&
   rs = ExtFloodFill(PIC.HDC, X, Y, FillPtcul&, FLOODFILLSURFACE)
   PIC.Refresh
   PIC.FillStyle = vbTransparent  'Default (Transparent)

DoEvents
End Sub

Private Sub Form_Resize()
FW = Width / Screen.TwipsPerPixelX
FH = Height / Screen.TwipsPerPixelY

If FW < 350 Then
   FW = 350
   Width = FW * Screen.TwipsPerPixelX
   DoEvents
End If

' Restrict minimum size
If FH < 336 Then
   FH = 336
   Height = FH * Screen.TwipsPerPixelY
   DoEvents
End If
With PIC
   .Left = 234
   .Top = 10
   .Height = FH - PIC.Top - PICHandle.Height - 56
   .Width = FW - PIC.Left - PICHandle.Width - 16
End With

'Re-position PicHandle to new PIC size
PICHandle.Left = PIC.Left + PIC.Width + 1
PICHandle.Top = PIC.Top + PIC.Height - PICHandle.Height + 3

PICBACK.Height = PIC.Height
PICBUFF.Height = PIC.Height
PICBACK.Width = PIC.Width
PICBUFF.Width = PIC.Width

PICW = PIC.Width
PICH = PIC.Height

ReDim PICArray(PICW, PICH)  ' BGRA WxHx4 bytes
PtrPICArray = VarPtr(PICArray(1, 1))
' Show new PIC size
LabWH.Caption = " WxH:" & Str$(PICW) & " x" & Str$(PICH)

OptClear_DblClick

Show
DoEvents
End Sub

Private Sub HScrollAmp_Change()
' For sine noise hills
Amp = HScrollAmp.Value
txtAmp.Text = Str$(HScrollAmp.Value)
End Sub

Private Sub mnuAxiom_Click()
Label2.Caption = "Bytes && secs"
fraAmp.Visible = False
fraAxiomSelector.Visible = Not fraAxiomSelector.Visible 'True
fraAxiomParams.Visible = True
End Sub

Private Sub mnuExit_Click()
Form_Unload 1
End
End Sub

Private Sub mnuLoadPicture_Click()
LoadSave = 0
frmLoadSave.Hide    ' Allows vbModal
frmLoadSave.Show vbModal
If FileSpec$ <> "" Then
   PIC.Picture = LoadPicture(FileSpec$)
   PIC.PaintPicture PIC.Picture, 0, 0, PIC.Width, PIC.Height
   PIC.Refresh
   'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
End If
End Sub

Private Sub mnuSaveBMP_Click()
LoadSave = 1
frmLoadSave.Hide    ' Allows vbModal
frmLoadSave.Show vbModal
If FileSpec$ <> "" Then
   SavePicture PIC.Image, FileSpec$
End If
End Sub

Private Sub mnuVBASM_Click()
ASM = Not ASM
If ASM Then
   mnuVBASM.Caption = "ASM"
   'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
Else
   mnuVBASM.Caption = "VB"
End If
End Sub

Private Sub OptClear_Click()
OptClear.Value = False
End Sub
Private Sub OptClear_DblClick()
OptClear.Value = False
PIC.Picture = LoadPicture

'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
End Sub

Private Sub PIC_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
' Show mouse X,Y

LabXY.Caption = " X:" & Str$(X) & "   Y:" & Str$(Y)
End Sub

Private Sub PIC_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

If Button = 1 Then  ' DRAW AXIOM at X,Y
   DISPLAY X, Y
ElseIf Button = 2 Then  ' Right-click FILL with StartColor
   ' Back up current picture to enable Undo/Redo
   res = BitBlt(PICBACK.HDC, 0, 0, PIC.Width, PIC.Height, _
   PIC.HDC, 0, 0, vbSrcCopy)
   
   PIC.DrawStyle = vbSolid
   PIC.DrawMode = 13
   PIC.DrawWidth = 1
   PIC.FillColor = StartColor
   FillPtcul& = PIC.Point(X, Y)
   FLOODFILLSURFACE = 1
   'Fills with FillColor so long as point surrounded by FillPtcul&
   rs = ExtFloodFill(PIC.HDC, X, Y, FillPtcul&, FLOODFILLSURFACE)
   PIC.Refresh
   PIC.FillStyle = vbTransparent  'Default (Transparent)
   'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM

End If
End Sub

'#######  RESIZE PIC ##############################################

Private Sub PicHandle_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

zInitX = X
zInitY = Y
End Sub

Private Sub PicHandle_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

On Error GoTo LabHError

PICHandle.MousePointer = vbSizeAll

If Button = 1 Then
   ' Test PicHandle's new position
   
   HLeft = PICHandle.Left + (X - zInitX)
   HTop = PICHandle.Top + (Y - zInitY)
   
   PICWidth = (HLeft - PIC.Left) - 1
   PICHeight = (HTop - PIC.Top) + PICHandle.Height - 2
   
   ' Limit lower size to 16x16
   If PICWidth < 16 Or PICHeight < 16 Then Exit Sub
   
   ' Check PICHandle stays on screen
   PHRight = HLeft + PICHandle.Width
   FW = Me.Width / Screen.TwipsPerPixelX
   If FW - PHRight < 16 Then Exit Sub
   
   PHBot = HTop + PICHandle.Height
   FH = Me.Height / Screen.TwipsPerPixelY
   If FH - PHBot < 60 Then Exit Sub
   
   ' Get PIC size after using PicHandle
   sizex = (HLeft - PIC.Left) - 1
   sizey = (HTop - PIC.Top) + PICHandle.Height - 2

   ' Force multiples of 8
   remx = sizex Mod 8
   If remx <> 0 Then sizex = sizex - remx
   remy = sizey Mod 8
   If remy <> 0 Then sizey = sizey - remy
   
   ' and resize PIC
   PIC.Width = sizex
   PIC.Height = sizey

   'Re-position PicHandle to new PIC size
   PICHandle.Left = PIC.Left + PIC.Width + 1
   PICHandle.Top = PIC.Top + PIC.Height - PICHandle.Height + 3
   
   ' set PICW, PICH
   PICW = PIC.Width
   PICH = PIC.Height

   ' Resize PICArray  for ASM
   ReDim PICArray(PICW, PICH)  ' BGRA WxHx4 bytes
   PtrPICArray = VarPtr(PICArray(1, 1))
   
   ' Show new PIC size
   LabWH.Caption = " WxH:" & Str$(PICW) & " x" & Str$(PICH)

   DoEvents
   
End If

Exit Sub
'========
LabHError:
PICHandle.Top = PIC.Top + PIC.Height
PICHandle.Left = PIC.Left + PIC.Width
End Sub

Private Sub PicHandle_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

' Clear PIC
OptClear_DblClick
' Resize back pics
PICBACK.Height = PIC.Height
PICBUFF.Height = PIC.Height
PICBACK.Width = PIC.Width
PICBUFF.Width = PIC.Width
   
PICHandle.MousePointer = vbDefault

End Sub


Private Sub MakePICYNoise(Ys)
' Make SineNoise Profile
ReDim PICYNoise(PICW)
' Period = PICW
zp = 2 * pi#
' Amp = 16    ' User settable Public variable: Varying this has major effect
ymin = 10000
ymax = -10000
Randomize Timer
Numrnd = Int((8 * Rnd) + 2)   ' Randomly varies hill profile

For IX = 1 To PICW
   Y1 = 8 * Amp * Sin(zp * IX / PICW + Numrnd)
   Y2 = (Rnd - 0.5) * Amp * Sin(zp * IX / (PICW / 2) + Rnd)  ' Double frequency
   Y3 = Amp * Sin(zp * IX / (PICW / 4))     ' Double frequency again
   Y4 = Amp * Sin(zp * IX / (PICW / 8 + 1))  ' Double frequency again
   
   PICYNoise(IX) = (Y1 + Y2 + Y3 + Y4) / 4
   If PICYNoise(IX) > ymax Then ymax = PICYNoise(IX)
   If PICYNoise(IX) < ymin Then ymin = PICYNoise(IX)
Next IX
yadd = Ys - Abs(ymin)
' Swap max/min
ymin = 10000
ymax = -10000
For IX = 1 To PICW
   PICYNoise(IX) = yadd - PICYNoise(IX)
   If PICYNoise(IX) > PICH Then ymax = PICH
   If PICYNoise(IX) > ymax Then ymax = PICYNoise(IX)
   If PICYNoise(IX) < ymin Then
      ymin = PICYNoise(IX)
      xatymin = IX
   End If
Next IX
End Sub

Private Sub DISPLAY(ByVal Xs, ByVal Ys)

' Back up current picture to enable SwapDo
res = BitBlt(PICBACK.HDC, 0, 0, PIC.Width, PIC.Height, _
PIC.HDC, 0, 0, vbSrcCopy)

' Get Start & End color components
LNGtoRGB EndColor
redE = Red
greenE = Green
blueE = Blue
LNGtoRGB StartColor
redS = Red
greenS = Green
blueS = Blue
zRed = Red
zGreen = Green
zBlue = Blue

Select Case AxiomIndex
Case 8   ' SHADE DOWN
   PIC.Line (0, Ys)-(PIC.Width, Ys), StartColor
   If (PIC.Height - Ys) > 0 Then
      zRedAdj = (1 * redE - redS) / (PIC.Height - Ys)
      zGreenAdj = (1 * greenE - greenS) / (PIC.Height - Ys)
      zBlueAdj = (1 * blueE - blueS) / (PIC.Height - Ys)
   Else
      zRedAdj = 1
      zGreenAdj = 1
      zBlueAdj = 1
   End If
   
   For I = Ys To PIC.Height
      cul = RGB(zRed, zGreen, zBlue)
      PIC.Line (0, I)-(PIC.Width, I), cul
         
      ' Increment colors after each line draw
      zRed = zRed + zRedAdj
      Red = zRed And 255
      zGreen = zGreen + zGreenAdj
      Green = zGreen And 255
      zBlue = zBlue + zBlueAdj
      Blue = zBlue And 255
   Next I
   'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
   Exit Sub

Case 9   ' SHADE UP
   PIC.Line (0, Ys)-(PIC.Width, Ys), StartColor
   If Ys > 0 Then
      zRedAdj = (1 * redE - redS) / Ys
      zGreenAdj = (1 * greenE - greenS) / Ys
      zBlueAdj = (1 * blueE - blueS) / Ys
   Else
      zRedAdj = 1
      zGreenAdj = 1
      zBlueAdj = 1
   End If
   
   For I = Ys To 0 Step -1
      cul = RGB(zRed, zGreen, zBlue)
      PIC.Line (0, I)-(PIC.Width, I), cul
      ' Increment colors after each line draw
      zRed = zRed + zRedAdj
      Red = zRed And 255
      zGreen = zGreen + zGreenAdj
      Green = zGreen And 255
      zBlue = zBlue + zBlueAdj
      Blue = zBlue And 255
   Next I
   'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
   Exit Sub
   
Case 10 ' Hills
   MakePICYNoise Ys  ' xatymin & ymin down to ymax
   
   Screen.MousePointer = vbHourglass
   DoEvents
   YN = 0
   PIC.DrawWidth = 2 ' Avoid any leaks
   PIC.PSet (0, ymax)
   For XL = 0 To PICW - 1
      YL = PICYNoise(XL + 1)
      If YL <= ymax Then
         PIC.Line -(XL, YL), StartColor
      End If
      PIC.Refresh
   Next XL
   If ymax <= PICH - 4 Then
      PIC.Line (0, ymax + 4)-(PICW, ymax + 4), StartColor
   Else
      PIC.Line (0, PICH - 1)-(PICW, PICH - 1), StartColor
   End If
   PIC.DrawWidth = 1

   PIC.Refresh

   PIC.DrawStyle = vbSolid
   'PIC.DrawMode = 13
   'PIC.DrawWidth = 1
   PIC.FillColor = StartColor ' =Border color
   FLOODFILLBORDER = 0&
   LX = CLng(xatymin)
   LY = CLng((Ys + ymin) \ 2)
   'Fills with FillColor to border color
   rs = ExtFloodFill(PIC.HDC, LX, LY, StartColor, FLOODFILLBORDER)
   PIC.FillStyle = vbTransparent  'Default (Transparent)
   PIC.Refresh
   
   Screen.MousePointer = vbDefault
   'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
   Exit Sub

Case 11  ' LINE
   PIC.Line (0, Ys)-(PIC.Width, Ys), StartColor
   'GETDIBS PIC.Image, 1 ' Fill PICArray for ASM
   Exit Sub
End Select

''''''''''''''''''''''''''''''''''''''''''''''
' Draw Shapes

Label2.Caption = Str$(LL) & " B"
If LL = 0 Then Exit Sub

' Save start steps for further drawing
XStepSave = XStep(AxiomIndex)
YStepSave = YStep(AxiomIndex)

NumBrackets = 0   ' Needed for VB push/pop turtle state
' Pre-calculate for +/- turning
zCosAngP = Cos(zAngP(AxiomIndex) * d2r#)
zSinAngP = Sin(zAngP(AxiomIndex) * d2r#)
zCosAngN = Cos(zAngN(AxiomIndex) * d2r#)
zSinAngN = Sin(zAngN(AxiomIndex) * d2r#)

Screen.MousePointer = vbHourglass
''''

'' Color range '''''''''''
LNGtoRGB EndColor
redE = Red
greenE = Green
blueE = Blue

LNGtoRGB StartColor
redS = Red
greenS = Green
blueS = Blue

zRed = Red
zGreen = Green
zBlue = Blue

' Color adjusts  NumFs calc in cmdAxiom
If NumFs <> 0 Then
   zRedAdj = (1 * redE - redS) / NumFs
   zGreenAdj = (1 * greenE - greenS) / NumFs
   zBlueAdj = (1 * blueE - blueS) / NumFs
Else
   zRedAdj = 0
   zGreenAdj = 0
   zBlueAdj = 0
End If

'-- For ASM -------
GETDIBS PIC.Image, 1 ' Fill PICArray for ASM

lngRed = CLng(Red)
lngGreen = CLng(Green)
lngBlue = CLng(Blue)
ptrStruc = VarPtr(MCODE.PICW)
ptrMC = VarPtr(LSYSMC(1))
PtrPICArray = VarPtr(PICArray(1, 1))
PtrByteArray = VarPtr(ByteArray(1))
FillMCODEStruc Xs, Ys
FillBMPStruc PICW, PICH
'-------------------

DoEvents
T = timeGetTime
'DW = 1   ' DrawWidth
If ASM Then
   If DW > 1 Then
      Xd = Xs
      For Yd = Ys To Ys + DW - 1
         FillMCODEStruc Xd, Yd
         DoEvents
         res = CallWindowProc(ptrMC, ptrStruc, 2&, 3&, 4&)
      Next Yd
      Yd = Yd - 1
      For Xd = Xs To Xs + DW - 1
         FillMCODEStruc Xd, Yd
         DoEvents
         res = CallWindowProc(ptrMC, ptrStruc, 2&, 3&, 4&)
      Next Xd
   Else
      res = CallWindowProc(ptrMC, ptrStruc, 2&, 3&, 4&)
   End If
   
   If StretchDIBits(PIC.HDC, _
       0, PICH, PICW, -PICH, _
       0, 0, PICW, PICH, _
       PICArray(1, 1), bm, _
       1, vbSrcCopy) = 0 Then

       MsgBox ("Blit Error")
       Done = True
       Erase PICArray
       Unload Me
       End
   End If
   PIC.Refresh
   DoEvents
   GoTo VBSkipped '>>>>>
End If

' VB VB VB ---------------------------------------------
For I = 1 To LL
   
   Select Case ByteArray(I)
   Case 70, 71 ' F Pen Down, Advance:  G Pen Up, Advance
      
      If ByteArray(I) = 70 Then   ' F draw
         cul = RGB(Red, Green, Blue)
         'PIC.Line (Xs, Ys)-Step(XStep(AxiomIndex), YStep(AxiomIndex)), cul
         ' This way to match ASM
         Xs2 = Xs + XStep(AxiomIndex)
         Ys2 = Ys + YStep(AxiomIndex)
         PIC.DrawWidth = DW
         PIC.Line (Xs, Ys)-(Xs2, Ys2), cul
         PIC.DrawWidth = 1
         'PIC.Circle (Xs2, Ys2), 4 * Rnd, cul, , , 1.5 * Rnd ' VB only
         'PIC.Refresh  ' Watch growth
      
      
         ' Increment colors after each line draw
         ' There are other ways of doing this
         zRed = zRed + zRedAdj
         Red = zRed And 255
         zGreen = zGreen + zGreenAdj
         Green = zGreen And 255
         zBlue = zBlue + zBlueAdj
         Blue = zBlue And 255
      End If
      'Advance
      Xs = Xs + XStep(AxiomIndex): Ys = Ys + YStep(AxiomIndex)
      XStep(AxiomIndex) = XStep(AxiomIndex) * XStepMult(AxiomIndex)
      YStep(AxiomIndex) = YStep(AxiomIndex) * YStepMult(AxiomIndex)
        
   Case 91  ' [  Push turtle state
      
      NumBrackets = NumBrackets + 1
      zSaveState(NumBrackets) = Xs
      NumBrackets = NumBrackets + 1
      zSaveState(NumBrackets) = Ys
      NumBrackets = NumBrackets + 1
      zSaveState(NumBrackets) = XStep(AxiomIndex)
      NumBrackets = NumBrackets + 1
      zSaveState(NumBrackets) = YStep(AxiomIndex)
   
   Case 93  ' ] Pop turtle state
      
      YStep(AxiomIndex) = zSaveState(NumBrackets)
      NumBrackets = NumBrackets - 1
      XStep(AxiomIndex) = zSaveState(NumBrackets)
      NumBrackets = NumBrackets - 1
      Ys = zSaveState(NumBrackets)
      NumBrackets = NumBrackets - 1
      Xs = zSaveState(NumBrackets)
      NumBrackets = NumBrackets - 1
        
   Case 43   ' + turn left

      zTmp = XStep(AxiomIndex)
      XStep(AxiomIndex) = zCosAngP * zTmp - zSinAngP * YStep(AxiomIndex)
      YStep(AxiomIndex) = zSinAngP * zTmp + zCosAngP * YStep(AxiomIndex)
        
   Case 45   ' - turn right
    
      zTmp = XStep(AxiomIndex)
      XStep(AxiomIndex) = zCosAngN * zTmp - zSinAngN * YStep(AxiomIndex)
      YStep(AxiomIndex) = zSinAngN * zTmp + zCosAngN * YStep(AxiomIndex)
    
   'Case Else   'Ignore
   
   End Select
   
Next I
PIC.Refresh
' ---------------------------------------------------------

VBSkipped:

T = timeGetTime - T
Label2.Caption = Label2.Caption & " " & Str$(T / 1000) & " s"

' Restore start steps
XStep(AxiomIndex) = XStepSave
YStep(AxiomIndex) = YStepSave

Screen.MousePointer = vbDefault

End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim Form As Form

' Make sure all forms cleared
For Each Form In Forms
   Unload Form
   Set Form = Nothing
Next Form
End
End Sub

