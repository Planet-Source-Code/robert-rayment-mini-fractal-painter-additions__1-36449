VERSION 5.00
Begin VB.Form frmColor 
   BackColor       =   &H0080C0FF&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Colors"
   ClientHeight    =   2595
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   1485
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2595
   ScaleWidth      =   1485
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSwap 
      BackColor       =   &H0080C0FF&
      Caption         =   "Swap"
      Height          =   300
      Left            =   795
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2265
      Width           =   660
   End
   Begin VB.CommandButton cmdAccept 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Accept"
      Height          =   300
      Left            =   75
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2265
      Width           =   675
   End
   Begin VB.VScrollBar VScrollEndColor 
      Height          =   1290
      Index           =   2
      LargeChange     =   10
      Left            =   1215
      Max             =   255
      TabIndex        =   5
      Top             =   225
      Width           =   195
   End
   Begin VB.VScrollBar VScrollEndColor 
      Height          =   1290
      Index           =   1
      LargeChange     =   10
      Left            =   1005
      Max             =   255
      TabIndex        =   4
      Top             =   225
      Width           =   195
   End
   Begin VB.VScrollBar VScrollEndColor 
      Height          =   1290
      Index           =   0
      LargeChange     =   10
      Left            =   795
      Max             =   255
      TabIndex        =   3
      Top             =   225
      Width           =   195
   End
   Begin VB.VScrollBar VScrollStartColor 
      Height          =   1290
      Index           =   2
      LargeChange     =   10
      Left            =   480
      Max             =   255
      TabIndex        =   2
      Top             =   225
      Width           =   195
   End
   Begin VB.VScrollBar VScrollStartColor 
      Height          =   1290
      Index           =   1
      LargeChange     =   10
      Left            =   270
      Max             =   255
      TabIndex        =   1
      Top             =   225
      Width           =   195
   End
   Begin VB.VScrollBar VScrollStartColor 
      Height          =   1290
      Index           =   0
      LargeChange     =   10
      Left            =   60
      Max             =   255
      TabIndex        =   0
      Top             =   225
      Width           =   195
   End
   Begin VB.Label Label3 
      BackColor       =   &H0080C0FF&
      Caption         =   " R  G  B"
      Height          =   180
      Index           =   1
      Left            =   795
      TabIndex        =   13
      Top             =   1530
      Width           =   630
   End
   Begin VB.Label Label3 
      BackColor       =   &H0080C0FF&
      Caption         =   " R  G  B"
      Height          =   180
      Index           =   0
      Left            =   60
      TabIndex        =   12
      Top             =   1530
      Width           =   630
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080C0FF&
      Caption         =   "End"
      Height          =   180
      Index           =   1
      Left            =   945
      TabIndex        =   11
      Top             =   15
      Width           =   390
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080C0FF&
      Caption         =   "Start"
      Height          =   180
      Index           =   0
      Left            =   195
      TabIndex        =   10
      Top             =   15
      Width           =   405
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000007&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "End"
      Height          =   450
      Index           =   1
      Left            =   795
      TabIndex        =   7
      Top             =   1755
      Width           =   645
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Start"
      Height          =   450
      Index           =   0
      Left            =   75
      TabIndex        =   6
      Top             =   1755
      Width           =   660
   End
End
Attribute VB_Name = "frmColor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'frmColor.frm

Option Base 1
DefLng A-W
DefSng X-Z

'Public redS As Byte, greenS As Byte, blueS As Byte
'Public redE As Byte, greenE As Byte, blueE As Byte
'Public StartColor, EndColor

Private Sub Form_Load()

LNGtoRGB StartColor
redS = Red
greenS = Green
blueS = Blue
VScrollStartColor(0) = redS ' Make form stay on top X,Y,WI,HI
FT = Form1.Top / Screen.TwipsPerPixelY + 330 '60
ret& = SetWindowPos(Me.hwnd, hwndInsertAfter, _
10, FT, 1605 \ 15, 3000 \ 15, wflags)

VScrollStartColor(1) = greenS
VScrollStartColor(2) = blueS
Label1(0).BackColor = RGB(redS, greenS, blueS)

LNGtoRGB EndColor
redE = Red
greenE = Green
blueE = Blue
VScrollEndColor(0) = redE
VScrollEndColor(1) = greenE
VScrollEndColor(2) = blueE
Label1(1).BackColor = RGB(redE, greenE, blueE)
End Sub

Private Sub cmdAccept_Click()

redS = VScrollStartColor(0).Value
greenS = VScrollStartColor(1).Value
blueS = VScrollStartColor(2).Value
StartColor = RGB(redS, greenS, blueS)
StartColor = Label1(0).BackColor

redE = VScrollEndColor(0).Value
greenE = VScrollEndColor(1).Value
blueE = VScrollEndColor(2).Value
EndColor = RGB(redE, greenE, blueE)
EndColor = Label1(1).BackColor

Form1.LabColors(0).BackColor = StartColor
Form1.LabColors(1).BackColor = EndColor
DoEvents
End Sub

Private Sub cmdSwap_Click()
temp = redE: redE = redS: redS = temp
temp = greenE: greenE = greenS: greenS = temp
temp = blueE: blueE = blueS: blueS = temp

VScrollStartColor(0).Value = redS
VScrollStartColor(1).Value = greenS
VScrollStartColor(2).Value = blueS
Label1(0).BackColor = RGB(redS, greenS, blueS)

VScrollEndColor(0).Value = redE
VScrollEndColor(1).Value = greenE
VScrollEndColor(2).Value = blueE
Label1(1).BackColor = RGB(redE, greenE, blueE)
End Sub

Private Sub VScrollStartColor_Change(Index As Integer)
Select Case Index
Case 0   ' redS
   redS = VScrollStartColor(0).Value
Case 1   ' greenS
   greenS = VScrollStartColor(1).Value
Case 2   ' blueS
   blueS = VScrollStartColor(2).Value
End Select

Label1(0).BackColor = RGB(redS, greenS, blueS)
End Sub

Private Sub VScrollEndColor_Change(Index As Integer)
Select Case Index
Case 0   ' redE
   redE = VScrollEndColor(0).Value
Case 1   ' greenE
   greenE = VScrollEndColor(1).Value
Case 2   ' blueS
   blueE = VScrollEndColor(2).Value
End Select

Label1(1).BackColor = RGB(redE, greenE, blueE)
End Sub

