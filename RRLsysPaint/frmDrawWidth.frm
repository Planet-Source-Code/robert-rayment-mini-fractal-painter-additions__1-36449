VERSION 5.00
Begin VB.Form frmDrawWidth 
   BackColor       =   &H0080C0FF&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "DrawWidth"
   ClientHeight    =   1035
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   1365
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   69
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   91
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picDW 
      BackColor       =   &H00FFFFFF&
      Height          =   300
      Left            =   120
      ScaleHeight     =   16
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   72
      TabIndex        =   2
      Top             =   435
      Width           =   1140
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   240
      Left            =   465
      Max             =   8
      Min             =   1
      TabIndex        =   1
      Top             =   90
      Value           =   1
      Width           =   825
   End
   Begin VB.TextBox txtDW 
      Enabled         =   0   'False
      Height          =   285
      Left            =   90
      TabIndex        =   0
      Text            =   "txtDW"
      Top             =   60
      Width           =   285
   End
End
Attribute VB_Name = "frmDrawWidth"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
' Make form stay on top X,Y,WI,HI
FT = Form1.Top / Screen.TwipsPerPixelY + 330 '60
ret& = SetWindowPos(Me.hwnd, hwndInsertAfter, _
124, FT, 100, 80, wflags)

HScroll1.Value = DW

End Sub

Private Sub HScroll1_Change()
DW = HScroll1.Value
txtDW.Text = Str$(DW)
picDW.DrawWidth = DW
picDW.Cls
picDW.Line (20, 8)-(50, 8), 0, BF
End Sub
