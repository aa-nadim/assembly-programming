#MAKE_COM# ; instruct compiler to make COM file.
ORG 100h ; directive required for a COM program.
MOV AX, 0B800h ; set AX to hexadecimal value of B800h.
MOV DS, AX ; copy value of AX to DS.
MOV CL, 'A' ; set CL to ASCII code of 'A', it is 41h.
MOV CH, 01011111b ; set CH to binary value.
MOV BX, 15Eh ; set BX to 15Eh.
MOV [BX], CX ; copy contents of CX to memory at B800:015E
RET ; returns to operating system


