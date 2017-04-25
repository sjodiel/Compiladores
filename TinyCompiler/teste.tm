* TINY Compilation to TM Code
* File: teste.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
  2:     IN  0,0,0 	read integer value
  3:     ST  0,0(5) 	read: store value
  4:     IN  0,0,0 	read integer value
  5:     ST  0,1(5) 	read: store value
* -> if
* -> Op
* -> Id
  6:     LD  0,1(5) 	load id value
* <- Id
  7:     ST  0,0(6) 	op: push left
* -> Const
  8:    LDC  0,0(0) 	load const
* <- Const
  9:     LD  1,0(6) 	op: load left
 10:    SUB  0,1,0 	op ==
 11:    JEQ  0,2(7) 	br if true
 12:    LDC  0,0(0) 	false case
 13:    LDA  7,1(7) 	unconditional jmp
 14:    LDC  0,1(0) 	true case
* <- Op
* if: jump to else belongs here
* -> assign
* -> Const
 16:    LDC  0,0(0) 	load const
* <- Const
 17:     ST  0,1(5) 	assign: store value
* <- assign
* if: jump to end belongs here
 15:    JEQ  0,3(7) 	if: jmp to else
* -> repeat
* repeat: jump after body comes back here
* -> assign
* -> Id
 19:     LD  0,1(5) 	load id value
* <- Id
 20:     ST  0,2(5) 	assign: store value
* <- assign
* -> assign
* -> Op
* -> Id
 21:     LD  0,0(5) 	load id value
* <- Id
 22:     ST  0,0(6) 	op: push left
* -> Op
* -> Op
* -> Id
 23:     LD  0,0(5) 	load id value
* <- Id
 24:     ST  0,-1(6) 	op: push left
* -> Id
 25:     LD  0,1(5) 	load id value
* <- Id
 26:     LD  1,-1(6) 	op: load left
 27:    DIV  0,1,0 	op /
* <- Op
 28:     ST  0,-1(6) 	op: push left
* -> Id
 29:     LD  0,1(5) 	load id value
* <- Id
 30:     LD  1,-1(6) 	op: load left
 31:    MUL  0,1,0 	op *
* <- Op
 32:     LD  1,0(6) 	op: load left
 33:    SUB  0,1,0 	op -
* <- Op
 34:     ST  0,1(5) 	assign: store value
* <- assign
* -> assign
* -> Id
 35:     LD  0,2(5) 	load id value
* <- Id
 36:     ST  0,0(5) 	assign: store value
* <- assign
* -> Op
* -> Id
 37:     LD  0,1(5) 	load id value
* <- Id
 38:     ST  0,0(6) 	op: push left
* -> Const
 39:    LDC  0,0(0) 	load const
* <- Const
 40:     LD  1,0(6) 	op: load left
 41:    SUB  0,1,0 	op ==
 42:    JEQ  0,2(7) 	br if true
 43:    LDC  0,0(0) 	false case
 44:    LDA  7,1(7) 	unconditional jmp
 45:    LDC  0,1(0) 	true case
* <- Op
 46:    JEQ  0,-28(7) 	repeat: jmp back to body
* <- repeat
 18:    LDA  7,28(7) 	jmp to end
* <- if
* -> Id
 47:     LD  0,0(5) 	load id value
* <- Id
 48:    OUT  0,0,0 	write ac
* End of execution.
 49:   HALT  0,0,0 	
