
		.macro function
		stmfd sp!, {lr}
		.endm

		.macro return code @ Test
		.ifnb \code
		mov r0, #\code
		.endif
		ldmfd sp!, {lr}
		mov pc, lr
		.endm
@ Cool
// Wow
/* Amazing */
		.macro print format, storage@ Wow
		.data
string\@:	.asciz "\format"
		.text
		ldr r0, =string
		.ifnb \storage
		mov r1, \storage
		.endif
		bl printf
		.endm

		.macro input format, storage
		.data
string\@:	.asciz "\format"
		.text
		ldr r0, =string\@
		mov r1, \storage
		bl scanf
		.endm
