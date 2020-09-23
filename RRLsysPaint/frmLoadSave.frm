VERSION 5.00
Begin VB.Form frmLoadSave 
   BackColor       =   &H0080C0FF&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "frmLoadSave"
   ClientHeight    =   5715
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2610
   HelpContextID   =   30
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5715
   ScaleWidth      =   2610
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   60
      TabIndex        =   5
      Text            =   "Text1"
      Top             =   4680
      Width           =   2475
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H0080C0FF&
      Caption         =   "Cancel"
      Height          =   495
      Left            =   1440
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5085
      Width           =   1035
   End
   Begin VB.CommandButton cmdAccept 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Accept"
      Height          =   495
      Left            =   135
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5085
      Width           =   1095
   End
   Begin VB.DirListBox Dir1 
      Height          =   2115
      Left            =   45
      TabIndex        =   2
      Top             =   420
      Width           =   2490
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   60
      TabIndex        =   1
      Top             =   75
      Width           =   2505
   End
   Begin VB.FileListBox File1 
      Height          =   2040
      Left            =   45
      Pattern         =   "*.bmp;*.jpg;*.gif"
      TabIndex        =   0
      Top             =   2610
      Width           =   2505
   End
End
Attribute VB_Name = "frmLoadSave"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' frmLoadSave.frm  Load/Save

Option Base 1
DefLng A-W
DefSng X-Z
' Public LoadSave, FileSpec$, FPath$


Private Sub Form_Load()
' Make form stay on top X,Y,WI,HI
FT = Form1.Top / Screen.TwipsPerPixelY + 20
ret& = SetWindowPos(Me.hwnd, hwndInsertAfter, _
50, FT, 2700 \ 15, 6045 \ 15, wflags)

If LoadSave = 0 Then
   Caption = Space$(6) & "Load bmp,jpg or gif"
Else
   Caption = Space$(10) & "Save BMP"
End If

Drive1.Drive = FPath$
Dir1.Path = FPath$
File1.Path = FPath$ 'Dir1.Path

Text1.Text = ""
Text1.SetFocus
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub Drive1_Change()
On Error GoTo NoDrive
Dir1.Path = Drive1.Drive
PrevDrive$ = Drive1.Drive
Exit Sub
'==========
NoDrive:
Beep
Drive1.Drive = PrevDrive$
Dir1.Path = PrevDrive$
Exit Sub
Resume
End Sub

Private Sub File1_Click()
Text1.Text = File1.FileName
End Sub
Private Sub File1_DblClick()
If LoadSave = 0 Then cmdAccept_Click
End Sub

Private Sub cmdAccept_Click()
' Load or Save
FPath$ = File1.Path
If Right(FPath$, 1) <> "\" Then FPath$ = FPath$ & "\"

FName$ = Text1.Text

If FName$ <> "" Then
   FileSpec$ = FPath$ & FName$
   If LoadSave = 1 Then FixFileExtension FileSpec$, "bmp"
Else
   FileSpec$ = ""
End If

Unload frmLoadSave
End Sub

Private Sub cmdCancel_Click()
FileSpec$ = ""
Unload frmLoadSave
End Sub

Private Sub FixFileExtension(FSpec$, Ext$)
E$ = "." + Ext$
pdot = InStr(1, FSpec$, ".")
If pdot = 0 Then
   FSpec$ = FSpec$ + E$
Else
   Ext$ = LCase$(Mid$(FSpec$, pdot))
   If Ext$ <> E$ Then
      FSpec$ = Left$(FSpec$, pdot - 1) + E$
   End If
End If
End Sub

