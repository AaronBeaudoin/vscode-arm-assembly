  .text
  .global main
wfww @dfwvw

@
main:		stmfd sp!, {lr}
		ldr r2,	[r5, #45]!
		print "Hello world!"
		return =main
		.amazing
		bl wow
ok:		.wow cool
test:		noice
		.noice wow
