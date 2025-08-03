; Loading instructions
; These instructions load an 8-bit or a 16-bit value into one of the three registers.

; Instruction Description
lda ; Load into accumulator from memory
ldx ; Load into X from memory
ldy ; Load into Y from memory

; Compare instructions
; These instructions, usually used with branch commands, compare one of the three registers with a value or memory. (They essentially subtract the value following the compare instruction from the value in the register, affecting the processor flags but not the register itself.)

; Instruction Description
cmp ; Compare accumulator with memory
cpy ; Compare Y with memory
cpx ; Compare X with memory

; Storage instructions
; These instructions store various values from a register into memory.

; Instruction Description
sta ; Store Accumulator to Memory
stx ; Store X to Memory
sty ; Store Y to Memory
stz ; Store Zero to Memory

; Branching instructions
; These instructions branch depending on the processor flags' status, except BRA and BRL, which always branch regardless of the processor flags.

; Instruction Description
bcc ; Branch if Carry Clear
bcs ; Branch if Carry Set
bpl ; Branch if Plus value
bmi ; Branch if Minus value
bne ; Branch if not Equal/Branch if not zero
beq ; Branch if Equal/Branch if zero
bvc ; Branch if Overflow Clear
bvs ; Branch if Overflow Set
brl ; Branch Always Long
bra ; Branch Always

;Mathematical instructions
;These instructions perform addition and subtraction with the registers and memory. (Note that there are no opcodes for multiplication and division; special registers must be used for those.)

; Instruction Description
adc ; Add with carry
sbc ; Subtract with Carry
inc ; Increment Accumulator or Memory
inx ; Increment X
iny ; Increment Y
dec ; Decrement Accumulator or Memory
dex ; Decrement X
dey ; Decrement Y

; Processor flag instructions
; These instructions set or clear various processor flags of the SNES.

; Instruction Description
sep ; Set Processor Status Flag
rep ; Reset Processor Status Flag
sec ; Set Carry Flag
sed ; Set Decimal Flag
sei ; Set Interrupt Flag
clc ; Clear Carry Flag
cld ; Clear Decimal Flag
cli ; Clear Interrupt Flag
clv ; Clear Overflow Flag
xce ; Exchange Carry and Emulation (swaps bits of emulation flag and carry flag, toggling emulation mode on/off)

; Stack instructions
; These instructions push and pull various bytes on/from the stack, a special designated area of RAM that is located at $01FF-$010B in SMW.

; Instruction Description
pea ; Push Effective Address (Simply push a 16-bit absolute value on the stack)
pei ; Push Effective Indirect Address
per ; Push Program Counter Relative
pha ; Push Accumulator
phb ; Push Data Bank Register
phd ; Push Direct Page Register
phk ; Push Program Bank Register
php ; Push Processor Status Flags
phx ; Push X
phy ; Push Y
pla ; Pull Accumulator
plb ; Pull Data Bank Register
pld ; Pull Direct Page Register
plp ; Pull Processor Status Flags
plx ; Pull X
ply ; Pull Y

; Bitwise instructions
; These operations affect the individual bits of A and/or memory.

; Instruction Description
and ; AND Accumulator with Memory
asl ; Left Shift Accumulator or Memory
bit ; Bit Test
eor ; Exclusive OR Accumulator with Memory
lsr ; Shift Right Accumulator or Memory
ora ; OR Accumulator with Memory
rol ; Rotate Left Accumulator or Memory
ror ; Rotate Right Accumulator or Memory
trb ; Test and Reset Bit
tsb ; Test and Set Bit

; Transfer instructions
; These opcodes transfer values from register to register (or, in the case of MVN and MVP, from memory to memory).

; Instruction Description
tax ; Transfer Accumulator to X
tay ; Transfer Accumulator to Y
tcd ; Transfer Accumulator to Direct Page
tcs ; Transfer Accumulator to Stack pointer
tdc ; Transfer Direct Page to Accumulator
tsc ; Transfer Stack Pointer to Accumulator
tsx ; Transfer Stack Pointer to X
txa ; Transfer X to Accumulator
txs ; Transfer X to Stack Pointer
tyx ; Transfer Y to X
tya ; Transfer Y to Accumulator
mvp ; Block Move Positive

; Program flow instructions
; These instructions jump into some other part of the ROM/RAM.

; Instruction Description
jml ; Jump Long
jmp ; Jump
jsl ; Jump to Subroutine Long
jsr ; Jump to Subroutine
rti ; Return from Interrupt
rtl ; Return from Subroutine Long
rts ; Return from Subroutine

; Other instructions
; These are other misc. opcodes.

; Instruction Description
brk ; Software Break (Sets the B flag in emulation mode, interrupt in native)
cop ; Coprocessor Empowerment (interrupt)
nop ; No operation (does absolutely nothing except waste two cycles of processing time)
stp ; Stop the Clock (freezes the SNES's processor)
wai ; Wait for Interrupt
wdm ; Reserved - No operation
xba ; Exchanges low and high byte of the A register
