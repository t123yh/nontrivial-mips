	.org 0x0
	.global _start
	.set noreorder
	.set nomacro
	.set noat
_start:
	ori $3, $0, 0x400
	nop

j1:
	jal plus_1
	nop
	bne $2, $3, j1
	addiu $2, $2, 1

	ori $10, $0, 0x1200
	nop
	nop

plus_1:
	addu $1, $1, $2
	jr $31
	nop

# The expanded instruction flow
#	jal
#	nop
#	addu
#	jr
#	nop
#	bne
#	addui
