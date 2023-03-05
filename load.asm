bits 32		;Направление компилятору
section .text
	;Мультибут
	align 4
	dd 0x1BADB002			;magic
	dd 0x00				;аналог flags
	dd - (0x1BADB002 + 0x00)	;Контрольная сумма

global start
extern k_main	;Дичь из kernel.c

start:
	cli  ; stop interrupts

	call k_main

	hlt ; halt the CPU
