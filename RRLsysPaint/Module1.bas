Attribute VB_Name = "Module1"
' Module1.bas

Option Base 1
DefLng A-W
DefSng X-Z

' -----------------------------------------------------------
' API to Fill background

Public Declare Function ExtFloodFill Lib "gdi32" (ByVal HDC As Long, ByVal X As Long, _
 ByVal Y As Long, ByVal crColor As Long, ByVal fuFillType As Long) As Long

' -----------------------------------------------------------
' Function & constants to make Window stay on top
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, _
ByVal hwndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, _
ByVal wi As Long, ByVal ht As Long, ByVal wflags As Long) As Long

Public Const hwndInsertAfter = -1
Public Const wflags = &H40 Or &H20
' -----------------------------------------------------------

Public Declare Function BitBlt Lib "gdi32" _
(ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, _
 ByVal nWidth As Long, ByVal nHeight As Long, _
 ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, _
 ByVal dwRop As Long) As Long

' --------------------------------------------------------------
' Windows API - For timing LSys translation & drawing

Public Declare Function timeGetTime& Lib "winmm.dll" ()

'------------------------------------------------------------------------------
' APIs for getting DIB bits to PICArray   ' For ASM

Public Declare Function GetDIBits Lib "gdi32" _
(ByVal aHDC As Long, ByVal hBitmap As Long, _
ByVal nStartScan As Long, ByVal nNumScans As Long, _
lpBits As Any, lpBI As BITMAPINFO, ByVal wUsage As Long) As Long

Public Declare Function CreateCompatibleDC Lib "gdi32" _
(ByVal HDC As Long) As Long

Public Declare Function SelectObject Lib "gdi32" _
(ByVal HDC As Long, ByVal hObject As Long) As Long

Public Declare Function DeleteDC Lib "gdi32" _
(ByVal HDC As Long) As Long

'------------------------------------------------------------------------------
'Copy one array to another of same number of bytes
Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" _
(Destination As Any, Source As Any, ByVal Length As Long)
'------------------------------------------------------------------------------

'To fill BITMAP structure  ' For ASM
Public Declare Function GetObjectAPI Lib "gdi32" Alias "GetObjectA" _
(ByVal hObject As Long, ByVal Lenbmp As Long, dimbmp As Any) As Long

Public Type BITMAP
   bmType As Long              ' Type of bitmap
   bmWidth As Long             ' Pixel width
   bmHeight As Long            ' Pixel height
   bmWidthBytes As Long        ' Byte width = 3 x Pixel width
   bmPlanes As Integer         ' Color depth of bitmap
   bmBitsPixel As Integer      ' Bits per pixel, must be 16 or 24
   bmBits As Long              ' This is the pointer to the bitmap data  !!!
End Type

'NB PICTURE STORED IN MEMORY UPSIDE DOWN
'WITH INCREASING MEMORY GOING UP THE PICTURE
'bmp.bmBits points to the bottom left of the picture

Public bmp As BITMAP
'------------------------------------------------------------------------------

' Structures for StretchDIBits   ' For ASM
Public Type BITMAPINFOHEADER ' 40 bytes
   biSize As Long
   biwidth As Long
   biheight As Long
   biPlanes As Integer
   biBitCount As Integer
   biCompression As Long
   biSizeImage As Long
   biXPelsPerMeter As Long
   biYPelsPerMeter As Long
   biClrUsed As Long
   biClrImportant As Long
End Type

Public Type BITMAPINFO
   bmiH As BITMAPINFOHEADER
   'bmiH As RGBTRIPLE      'NB Palette NOT NEEDED for 16,24 & 32-bit
End Type
Public bm As BITMAPINFO

' For transferring drawing in an integer array to Form or PicBox
Public Declare Function StretchDIBits Lib "gdi32" (ByVal HDC As Long, _
ByVal X As Long, ByVal Y As Long, _
ByVal DesW As Long, ByVal DesH As Long, _
ByVal SrcXOffset As Long, ByVal SrcYOffset As Long, _
ByVal PICWW As Long, ByVal PICHH As Long, _
lpBits As Any, lpBitsInfo As BITMAPINFO, _
ByVal wUsage As Long, ByVal dwRop As Long) As Long

'--------------------------------------------------------------------------
' For calling machine code ' For ASM
Public Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" _
(ByVal lpMCode As Long, _
ByVal Long1 As Long, ByVal Long2 As Long, _
ByVal Long3 As Long, ByVal Long4 As Long) As Long

'USE
' res = CallWindowProc(ptrMC, ptrStruc, 2&, 3&, 4&)

'MCode Structure
Public Type MCodeStruc
   PICW As Long
   PICH As Long
   PtrByteArray As Long
   PtrPICArray As Long
   LL As Long              ' Length of ByteArray
   Xs As Single           ' PIC click point
   Ys As Single           ' PIC click point
   zRed As Single
   zGreen As Single
   zBlue As Single
   zRedAdj As Single
   zGreenAdj As Single
   zBlueAdj As Single
   lngRed As Long
   lngGreen As Long
   lngBlue As Long
   XStep As Single
   YStep As Single
   XStepMult As Single
   YStepMult As Single
   zSinAngP As Single
   zCosAngP As Single
   zSinAngN As Single
   zCosAngN As Single
End Type
Public MCODE As MCodeStruc
Public LSYSMC() As Byte  ' Array to hold machine code
Public ptrMC, ptrStruc   ' Ptrs to Machine Code & Structure
Public PICArray()
Public PtrPICArray
Public PtrByteArray
' res = CallWindowProc(ptrMC, ptrStruc, 2&, 3&, 4&)

'ptrStruc = VarPtr(MCODE.PICW)
'ptrMC = VarPtr(LSYSMC(1))
'PtrPICArray = VarPtr(PICArray(1))
'PtrByteArray = VarPtr(ByteArray(1))

Public lngRed, lngGreen, lngBlue
'-----------------------------------------------------------------------

'=====================================================

Public Read$()

' Axiom fixed values
Public AxiomIndex
Public Axiom$(0 To 7)
Public NumAxiomStrings(0 To 7)
Public P$(0 To 7), Q$(0 To 7), R$(0 To 7), S$(0 To 7)
Public LevelMax(0 To 7)
' User changeable values
Public Level(0 To 7)
Public zAngP(0 To 7), zAngN(0 To 7)
Public XStep(0 To 7), YStep(0 To 7)
Public XStepMult(0 To 7), YStepMult(0 To 7)

' Default values
Public LevelDefault(0 To 7)
Public zAngPDefault(0 To 7), zAngNDefault(0 To 7)
Public XStepDefault(0 To 7), YStepDefault(0 To 7)
Public XStepMultDefault(0 To 7), YStepMultDefault(0 To 7)

' Axiom variables
Public LL, NumFs           ' LL len of expanded axiom & NumFs
Public ByteArray() As Byte

' Push [ & Pop ] turtle state for VB only
Public NumBrackets
Public zSaveState()

Public StartColor, EndColor
Public Red As Byte, Green As Byte, Blue As Byte
Public redS As Byte, greenS As Byte, blueS As Byte
Public redE As Byte, greenE As Byte, blueE As Byte

Public zRed, zGreen, zBlue
Public zRedAdj, zGreenAdj, zBlueAdj
Public zSinAngP, zCosAngP, zSinAngN, zCosAngN

Public PICW, PICH ' PicBox size

Public DW      ' DrawWidth

Public ASM As Boolean

Public PathSpec$, FPath$
Public LoadSave, FileSpec$
Public PrevDrive$

Public Const pi# = 3.1415926535898
Public Const d2r# = pi# / 180
Public Const r2d# = 180 / pi#

Public Sub LNGtoRGB(ByVal LongCul As Long)
' Public red As Byte, green As Byte, blue As Byte
Red = LongCul And &HFF
Green = (LongCul \ &H100) And &HFF
Blue = (LongCul \ &H10000) And &HFF
End Sub

Public Sub FillMCODEStruc(Xs, Ys)   ' For ASM
PtrzSaveState = VarPtr(zSaveState(1))
MCODE.PICW = PICW
MCODE.PICH = PICH
MCODE.PtrByteArray = PtrByteArray
MCODE.PtrPICArray = PtrPICArray
MCODE.LL = LL              ' Length of ByteArray
MCODE.Xs = Xs              ' PIC click point
MCODE.Ys = Ys              ' PIC click point
MCODE.zRed = zRed
MCODE.zGreen = zGreen
MCODE.zBlue = zBlue
MCODE.zRedAdj = zRedAdj
MCODE.zGreenAdj = zGreenAdj
MCODE.zBlueAdj = zBlueAdj
MCODE.lngRed = lngRed
MCODE.lngGreen = lngGreen
MCODE.lngBlue = lngBlue
MCODE.XStep = XStep(AxiomIndex)
MCODE.YStep = YStep(AxiomIndex)
MCODE.XStepMult = XStepMult(AxiomIndex)
MCODE.YStepMult = YStepMult(AxiomIndex)
MCODE.zSinAngP = zSinAngP
MCODE.zCosAngP = zCosAngP
MCODE.zSinAngN = zSinAngN
MCODE.zCosAngN = zCosAngN
End Sub

Public Sub FillBMPStruc(bwidth, bheight)  ' For ASM
With bm.bmiH
  .biSize = 40
  .biwidth = bwidth
  .biheight = bheight
  .biPlanes = 1
  .biBitCount = 32           ' Sets up BGRA pixels
  .biCompression = 0
  BytesPerScanLine = (.biwidth * .biBitCount * 4)
  .biSizeImage = BytesPerScanLine * Abs(.biheight)
  
  .biXPelsPerMeter = 0
  .biYPelsPerMeter = 0
  .biClrUsed = 0
  .biClrImportant = 0
End With
End Sub

Public Sub Loadmcode(InFile$, MCCode() As Byte) ' For ASM
'Load machine code into InCode() byte array
On Error GoTo InFileErr
If Dir$(InFile$) = "" Then
   MsgBox (InFile$ & " missing")
   DoEvents
   Unload Form1
   End
End If
Open InFile$ For Binary As #1
MCSize& = LOF(1)
If MCSize& = 0 Then
InFileErr:
   MsgBox (InFile$ & " missing")
   DoEvents
   Unload Form1
   End
End If
ReDim MCCode(MCSize&)
Get #1, , MCCode
Close #1
On Error GoTo 0
End Sub

Public Sub GETDIBS(ByVal PICIM As Long, Invert As Long)
' Fill PICArray for ASM
' PICIM is PIC.Image - handle to picbox memory
' from which pixels will be extracted and
' stored in PICArray()

On Error GoTo DIBError

'Get info on picture loaded into PIC
GetObjectAPI PICIM, Len(bmp), bmp

NewDC = CreateCompatibleDC(0&)
OldH = SelectObject(NewDC, PICIM)

' Set up bm struc for GetDIBits & StretchDIBits
With bm.bmiH
   .biSize = 40
   .biwidth = bmp.bmWidth
   .biheight = bmp.bmHeight
   .biPlanes = 1
   .biBitCount = 32          ' Sets up BGRA pixels
   .biCompression = 0
   BytesPerScanLine = ((((.biwidth * .biBitCount) + 31) \ 32) * 4)
   PadBytesPerScanLine = _
       BytesPerScanLine - (((.biwidth * .biBitCount) + 7) \ 8)
   .biSizeImage = BytesPerScanLine * Abs(.biheight)
End With

If Invert = 1 Then
   bm.bmiH.biheight = -(bmp.bmHeight)
End If

' Set PICArray to receive color bytes BGRA
ReDim PICArray(PICW, PICH) As Long

PtrPICArray = VarPtr(PICArray(1, 1))

' Load color bytes into PICArray
ret = GetDIBits(NewDC, PICIM, 0, PICH, PICArray(1, 1), bm, 1)

' Clear mem
SelectObject NewDC, OldH
DeleteDC NewDC

PtrPICArray = VarPtr(PICArray(1, 1))
PalSize = 4 * PICW * PICH     ' Bytes

Exit Sub
'==========
DIBError:
  MsgBox "DIB Error in GETDIBS"
  DoEvents
  Unload Form1
  End
End Sub


