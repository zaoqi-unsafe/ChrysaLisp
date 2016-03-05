%include 'inc/func.inc'

;;;;;;;;;;;
; test code
;;;;;;;;;;;

	fn_function tests/test6
		;farm task started by test5

		;read exit command etc
		class_call mail, mymail
		class_call mem, free

		;wait a bit
		vp_cpy 2000000, r0
		fn_call sys/math_random
		vp_add 2000000, r0
		class_call task, sleep

		;print Hello and return
		vp_lea [rel hello], r0
		vp_cpy 1, r1
		class_jmp io, string

	hello:
		db 'Hello from farm worker !', 10, 0

	fn_function_end
