.model tiny
.data
fname db 'file41.txt',0
handle db ?
red1 db 18dup('$')
.code
	.startup
	mov ah,3dh
	lea dx,fname
	mov al,02
	int 21h
	mov handle,ax
	mov bx,handle
	
	mov ah,3fh
	mov cx,17
	lea dx,red1
	int 21h
	
	lea dx,red1
	mov ah,09h
	int 21h
	
	mov ah,3eh
	int 21h
	.exit
end