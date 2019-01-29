.model  tiny
.data
dat1    db      "Doll"
cnt     db      04h
.code
.startup
        mov     ah,00h     
        mov     al,03h
        int     10h            ;setting video mode
        lea     si,dat1
        mov     dl,38          ;column set
        mov     ah,04
        mov     cnt,ah         ;cnt=04
x1:     mov     ah,02h
        mov     bh,0
        mov     dh,12
        int     10h            ;setting of cursor position
        mov     ah,09h         ;writing string
        lodsb                  ;al=character to display
        mov     bh,0
        mov     cx,01          
        mov     bl,8Fh
        int     10h             ;character written
        inc     dl
        dec     cnt
        jnz     x1
        
.exit
end
