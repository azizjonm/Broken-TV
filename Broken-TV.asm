org 100h
  mov al,13h
	int 10h
	push 0xa000
	pop es
xlp1:
	xor di,di
xlp:
	add ax,di
	ror al,3
	stosb
	cmp di,800*600
	jne xlp
	jmp xlp1
