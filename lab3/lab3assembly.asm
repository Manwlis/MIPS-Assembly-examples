.data

choice0: .asciiz "epelekse (1-5): "
choice1: .asciiz "\n1.dhmiourgia listas"
choice2: .asciiz "2.eisagwgh antikeimenoy"
choice3: .asciiz "3.diagrafh antikeimenou"
choice4: .asciiz "4.ektipwsh sigkekrimenou stoixeiou"
choice5: .asciiz "5.eksodos"
final: .asciiz "Epelekses : "


.text
main:

while:

li $v0, 4
la $a0, choice1
syscall

li $v0, 4
la $a0, choice2
syscall

li $v0, 4
la $a0, choice3
syscall

li $v0, 4
la $a0, choice4
syscall

li $v0, 4
la $a0, choice5
syscall

li $v0, 4
la $a0, choice0
syscall

li  $v0, 5
syscall
move $s0,$a0

li $v0, 4
la $a0, final
syscall

move $a0,$s0
li  $v0, 1
syscall

beq $s0,5,ExitMenuWhile # an s0 = 5 eksodos.

j while

ExitMenuWhile: