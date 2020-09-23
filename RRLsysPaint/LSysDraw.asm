; LSysDraw.asm  by Robert Rayment  July 2002

%macro movab 2      ; name & num of parameters
  push dword %2     ; 2nd param
  pop dword %1      ; 1st param
%endmacro           ; use  movab %1,%2
; Allows eg movab bmW,[ebx+4]

; Structure from VB
%define PICW            [ebp-4]
%define PICH            [ebp-8]
%define PtrByteArray    [ebp-12]
%define PtrPICArray     [ebp-16]
%define LL              [ebp-20]
%define Xs              [ebp-24]
%define Ys              [ebp-28]
%define zRed            [ebp-32]
%define zGreen          [ebp-36]
%define zBlue           [ebp-40]
%define zRedAdj         [ebp-44]
%define zGreenAdj       [ebp-48]
%define zBlueAdj        [ebp-52]
%define lngRed          [ebp-56]
%define lngGreen        [ebp-60]
%define lngBlue         [ebp-64]
%define XStep           [ebp-68]
%define YStep           [ebp-72]
%define XStepMult       [ebp-76]
%define YStepMult       [ebp-80]
%define zSinAngP        [ebp-84]
%define zCosAngP        [ebp-88]
%define zSinAngN        [ebp-92]
%define zCosAngN        [ebp-96]

%define zTemp   [ebp-100]

; Bresenham line drawing
%define ix1     [ebp-104]
%define iy1     [ebp-108]
%define ix2     [ebp-112]
%define iy2     [ebp-116]
%define idx     [ebp-120]
%define idy     [ebp-124]
%define incx    [ebp-128]
%define jkstep  [ebp-132]
%define id      [ebp-136]
%define ainc    [ebp-140]
%define binc    [ebp-144]
%define j       [ebp-148]
%define k       [ebp-152]
%define ix      [ebp-156]
%define iy      [ebp-160]
%define ixp     [ebp-164]
%define iyp     [ebp-168]

[bits 32]

    push ebp
    mov ebp,esp
    sub esp,168
    push edi   
    push esi
    push ebx

;-------------------------------
    ; Copy structure
    mov ebx,[ebp+8]   ; PtrStruc
    
    movab PICW,         [ebx] 
    movab PICH,         [ebx+4]
    movab PtrByteArray, [ebx+8]
    movab PtrPICArray,  [ebx+12]
    movab LL,           [ebx+16]
    movab Xs,           [ebx+20]
    movab Ys,           [ebx+24]
    movab zRed,         [ebx+28]
    movab zGreen,       [ebx+32]
    movab zBlue,        [ebx+36]
    movab zRedAdj,      [ebx+40]
    movab zGreenAdj,    [ebx+44]
    movab zBlueAdj,     [ebx+48]
    movab lngRed,       [ebx+52]
    movab lngGreen,     [ebx+56]
    movab lngBlue,      [ebx+60]
    movab XStep,        [ebx+64]
    movab YStep,        [ebx+68]
    movab XStepMult,    [ebx+72]
    movab YStepMult,    [ebx+76]
    movab zSinAngP,     [ebx+80]
    movab zCosAngP,     [ebx+84]
    movab zSinAngN,     [ebx+88]
    movab zCosAngN,     [ebx+92]
;-------------------------------

    mov ecx,1
ForLL:
    push ecx
    ; Pick up character
    mov edi,PtrByteArray
    mov AL,byte [edi]
    inc edi
    mov PtrByteArray,edi
    ; Test character
    cmp AL,70           ; F
    je anF
    cmp AL,71           ; G
    je AdvanceXsYs      ; must be G No line drwaing
    jmp near TestPush
anF:
    ; F                 ; Draw line
    fld dword Xs
    fistp dword ix1     ; ix1 = Xs
    fld dword Ys
    fistp dword iy1     ; iy1 = Ys
    
    fld dword Xs
    fld dword XStep
    faddp st1
    fistp dword ix2     ; ix2 = Xs+XStep
    fld dword Ys
    fld dword YStep
    faddp st1
    fistp dword iy2     ; iy2 = Ys+YStep

    Call Bresen

    ; Incr colors

    fld dword zRed
    fld dword zRedAdj
    faddp st1
    fst dword zRed
    fistp dword lngRed
    mov eax,lngRed
    and eax,0FFh
    mov lngRed,eax

    fld dword zGreen
    fld dword zGreenAdj
    faddp st1
    fst dword zGreen
    fistp dword lngGreen
    mov eax,lngGreen
    and eax,0FFh
    mov lngGreen,eax

    fld dword zBlue
    fld dword zBlueAdj
    faddp st1
    fst dword zBlue
    fistp dword lngBlue
    mov eax,lngBlue
    and eax,0FFh
    mov lngBlue,eax

AdvanceXsYs:    
    fld dword Xs
    fld dword XStep
    faddp st1
    fstp dword Xs       ; Xs = Xs+XStep
    
    fld dword Ys
    fld dword YStep
    faddp st1
    fstp dword Ys       ; Ys = Ys+YStep

    fld dword XStep
    fld dword XStepMult
    fmulp st1
    fstp dword XStep    ; XStep=XStep*XStepMult
    
    fld dword YStep
    fld dword YStepMult
    fmulp st1
    fstp dword YStep    ; YStep=YStep*YStepMult
    jmp near NexLL

TestPush:
    cmp AL,91           ; [
    jne TestPop
    
    pop ecx
    push dword Xs
    push dword Ys
    push dword XStep
    push dword YStep
    push ecx

    jmp near NexLL

TestPop:
    cmp AL,93           ; ]
    jne TestPlus
    
    pop ecx
    pop dword YStep
    pop dword XStep
    pop dword Ys
    pop dword Xs
    push ecx

    jmp near NexLL

TestPlus:
    cmp AL,43           ; + turn left
    jne TestMinus
    
    mov eax,XStep
    mov zTemp,eax

    fld dword zCosAngP
    fld dword zTemp
    fmulp st1           ; zCosAngP*zTemp
    fld dword zSinAngP
    fld dword YStep
    fmulp st1           ; zSinAngP*YStep
    fsubp st1           ; st1-st0 = zCosAngP*zTemp-zSinAngP*YStep
    fstp dword XStep
    
    fld dword zSinAngP
    fld dword zTemp
    fmulp st1           ; zSinAngP*zTemp
    fld dword zCosAngP
    fld dword YStep
    fmulp st1           ; zCosAngP*YStep
    faddp st1           ; st1+st0 = zSinAngP*zTemp+zCosAngP*YStep
    fstp dword YStep
    jmp NexLL

TestMinus:
    cmp AL,45           ; - turn right
    jne NexLL
    
    mov eax,XStep
    mov zTemp,eax

    fld dword zCosAngN
    fld dword zTemp
    fmulp st1           ; zCosAngN*zTemp
    fld dword zSinAngN
    fld dword YStep
    fmulp st1           ; zSinAngN*YStep
    fsubp st1           ; st1-st0 = zCosAngN*zTemp-zSinAngN*YStep
    fstp dword XStep
    
    fld dword zSinAngN
    fld dword zTemp
    fmulp st1           ; zSinAngN*zTemp
    fld dword zCosAngN
    fld dword YStep
    fmulp st1           ; zCosAngN*YStep
    faddp st1           ; st1+st0 = zSinAngN*zTemp+zCosAngN*YStep
    fstp dword YStep
    
    ;-----------------
NexLL:
    pop ecx
    inc ecx
    cmp ecx,LL
    jbe near ForLL
    
    ;mov eax,ecx
;---------------------------    
GETOUT:
    pop ebx
    pop esi
    pop edi
    mov esp,ebp
    pop ebp
    ret 16
;##############################################    
Bresen:
; Input ix1,iy1,ix2,iy2, lngRed,lngGreen,lngBlue, 
;       PICW, PICH, PtrPICArray  
;       & is PICArray(1-PICW,1-PICH)
    
    ; Determine steep or shallow slope
    
    mov eax,ix2
    mov ebx,ix1
    sub eax,ebx     ; eax = (ix2-ix1)
    cmp eax,0
    jge absdx
    neg eax         ; eax = (ix1-ix2)
absdx:
    mov idx,eax     ; Abs(ix2-ix1)

    mov eax,iy2
    mov ebx,iy1
    sub eax,ebx
    cmp eax,0
    jge absdy
    neg eax
absdy:
    mov idy,eax     ; Abs(iy2-iy1)
    
    mov eax,1
    mov jkstep,eax  ; jkstep=1
    mov incx,eax    ; incx=1

    mov eax,idx
    cmp eax,idy
    jge idxGEidy    ;idx>=idy   Shallow
    
        ; Steep slope   ; idx<idy  Steep
        mov eax,iy1
        cmp eax,iy2
        jle TX2X1
        mov eax,-1
        mov jkstep,eax  ; jkstep=-1  iy1>iy2
TX2X1:
        mov eax,ix1
        cmp eax,ix2
        jle SET1
        mov eax,-1
        mov incx,eax    ; incx=-1  ix1>ix2
SET1:   
        mov eax,idx
        shl eax,1
        sub eax,idy
        mov id,eax      ; id=2*idx-idy
        mov eax,idx
        sub eax,idy
        shl eax,1
        mov ainc,eax    ; ainc=2*(idx-idy)
        mov eax,idx
        shl eax,1
        mov binc,eax    ; binc=2*idx
        mov eax,iy1
        mov j,eax       ; j=iy1
        mov eax,iy2
        mov k,eax       ; k=iy2
        mov eax,ix1
        mov ix,eax      ; ix=ix1
        jmp near FIY

idxGEidy:   ; Shallow slope
        mov eax,ix1
        cmp eax,ix2
        jle TY2Y1
        mov eax,-1
        mov jkstep,eax  ; jkstep=-1  ix1>ix2
TY2Y1:
        mov eax,iy1
        cmp eax,iy2
        jle SET2
        mov eax,-1
        mov incx,eax    ; incx=-1  iy1>iy2
SET2:
        mov eax,idy
        shl eax,1
        sub eax,idx
        mov id,eax      ; id=2*idy-idx
        mov eax,idy
        sub eax,idx
        shl eax,1
        mov ainc,eax    ; ainc=2*(idy-idx)
        mov eax,idy
        shl eax,1
        mov binc,eax    ; binc=2*idy
        mov eax,ix1
        mov j, eax      ; j=ix1
        mov eax,ix2
        mov k,eax       ; k=ix2
        mov eax,iy1
        mov ix,eax      ; ix=iy1

FIY:
    mov ecx,j
FFIY:
    mov iy,ecx
    
    mov eax,idx
    cmp eax,idy
    jge Shallow     ; * ; These jumps could be avoided
    ; Steep             ; by separate loops for steep
    mov eax,ix          ; and shallow slopes but at the
    mov ixp,eax         ; cost of longer code.
    mov eax,iy
    mov iyp,eax
        
    Call DLINE      ; + ; Pulling the DLINE code into
                        ; here would be a bit faster
    cmp eax,0
    jne Increment   ; *
    RET             ; Out of range

Shallow:
    mov eax,ix
    mov iyp,eax
    mov eax,iy
    mov ixp,eax
    
    Call DLINE      ; +

    cmp eax,0
    jne Increment
    RET             ; Out of range

Increment:
    mov eax,id
    cmp eax,0
    jle idlez
    
    mov ebx,ainc
    add eax,ebx
    mov id,eax      ; id=id+ainc
    mov eax,ix
    mov ebx,incx
    add eax,ebx
    mov ix,eax      ; ix=ix+incx
    jmp NextY
idlez:
    mov ebx,binc
    add eax,ebx
    mov id,eax      ; id=id+binc
    
NextY:
    cmp ecx,k
    jne Incrpoint
    RET
Incrpoint:
    mov eax,jkstep
    add ecx,eax
    cmp ecx,k
    jne near FFIY
    
    RET

;============================================================
DLINE: ; In: ixp,iyp, lngRed,lngGreen,lngBlue, PICW,PICH, PtrPICArray
       ; ixp 1-PICW,  iyp 1-PICH-1   
    
       ;edi = edi_origin + 4 * [(iyp-1) * PICW + (ixp-1))]

    mov edi,PtrPICArray ; edi_origin
    
    ; Clip
    mov eax,iyp
    cmp eax,1
    jge tupy
    mov eax,0           ; Flag out of range
    RET
tupy:
    cmp eax,PICH
    jle iypOK
    mov eax,0           ; Flag out of range
    RET
iypOK:
    dec eax
    mov ebx,PICW
    mul ebx
    
    mov ebx,ixp
    cmp ebx,1
    jge tupx
    mov eax,0           ; Flag out of range
    RET
tupx:
    cmp ebx,PICW
    jle ixpOK
    mov eax,0           ; Flag out of range
    RET
ixpOK:
    ;-------------

    dec ebx
    add eax,ebx
    shl eax,2       ; *4
    add edi,eax
    
    mov eax,lngRed
    shl eax,8
    or eax,lngGreen
    shl eax,8
    or eax,lngBlue

    mov [edi],eax
    mov eax,1       ; Flag in range

RET
;############################################################
