.data
.globl main
.globl syn1
.globl syn2
.globl syn3
.globl syn4
.globl choice1
.globl array
.globl counter
.globl gemathLista
.globl adeiaLista
.globl posa8es
.globl dwseValue
.globl noXwros
.globl epitixeiaDiagrafhs
.globl dwse8esh
.globl stoixeio
.globl la8os8esh

choice1: .asciiz "\n1.dhmiourgia listas\n2.eisagwgh antikeimenoy\n3.diagrafh antikeimenou\n4.ektipwsh sigkekrimenou stoixeiou\n5.eksodos\nepelekse (1-5): "
gemathLista: .asciiz "\nh lista einai gemath\n"
adeiaLista: .asciiz "\nh lista einai adeia\n"
posa8es: .asciiz "\nposa stoixeia 8es na mpoun: "
dwseValue: .asciiz "\ndwse value: "
noXwros: .asciiz "\nden iparxei arketos xwros\n"
epitixeiaDiagrafhs: .asciiz "\nepitixeia diagrafhs\n"
dwse8esh: .asciiz  "\ndwse 8esh stoixeiou pou 8es: "
stoixeio: .asciiz "\nto stoxeio einai: "
la8os8esh: .asciiz "\nden iparxei stoixeio se ayth th 8esh\n"

array: 
.align 2
.space 800
counter: .word 0

.text

main:

la $t0, counter
lw $s1, 0($t0)             #s1 = counter

la $s2, array
while:

li $v0, 4                  #Print message
la $a0, choice1
syscall

li $v0, 5                  #Read input
syscall
move $s0, $v0

beq $s0, 5, exit           # an s0 = 5 eksodos.
beq $s0, 1, epilogi1       #klp
beq $s0, 2, epilogi2
beq $s0, 3, epilogi3
beq $s0, 4, epilogi4

j while

epilogi1:

li $v0, 4                  #Print message
la $a0, posa8es
syscall

li $v0, 5                  #Read input
syscall         
move $a0, $v0              #input
move $a1, $s1              #counter
move $a2, $s2              #head
jal syn1                   #kalesma syn1 me eisodo a0 = input a1 = counter
move $s2, $v0              #epistrefei to neo head
move $s1, $v1              #epistrefei to neo counter

j while

epilogi2:

li $v0, 4                  #Print message
la $a0, dwseValue
syscall

li $v0, 5                  #Read input
syscall   
             
move $a0, $v0              #input
move $a1, $s1              #counter
move $a2, $s2              #head
jal syn2
move $s2, $v0              #epistrefei to neo head
move $s1, $v1              #epistrefei to neo counter

j while

epilogi3:

move $a1, $s1              #counter
move $a2, $s2              #head
jal syn3
move $s2, $v0              #epistrefei to neo head
move $s1, $v1              #epistrefei to neo counter

j while

epilogi4:

li $v0, 4                   #Print message
la $a0, dwse8esh
syscall

li $v0, 5                   #Read input
syscall

move $a0, $v0               #input
move $a1, $s1               #counter
la $a2, array               #head
jal syn4

j while

exit:
li $v0, 10
syscall          #teloooos


#------------synarthsi 1---------------
syn1:

li $t6, 100
add $t5, $a1, $a0

bge $t5, $t6, error0 

move $t7, $zero
move $t0, $a0

whilesyn1:
beq $t0, $t7, exitwhilesyn1

sw $a1, 0($a2)              #apo8ikeuei to id
addi $a2, $a2, 4

li $v0, 4                   #Print message
la $a0, dwseValue
syscall

li $v0, 5
syscall
sw $v0, 0($a2)              #apo8ikeuei to value tou xrhsth


addi $a2, $a2, 4
addi $a1, $a1, 1           #counter++

addi $t7, $t7, 1
j whilesyn1

exitwhilesyn1:

move $v0, $a2              #epistrefei to head
move $v1, $a1              #epistrefei to counter
jr $ra

error0:

li $v0, 4                   #Print error message
la $a0, noXwros
syscall

move $v0, $a2              #epistrefei to head
move $v1, $a1              #epistrefei to counter
jr $ra

#------------synarthsi 2---------------
syn2:

li $t0, 100
beq $a1, $t0, error1        #an h lista einai gemath na mhn sinexisei

sw $a1, 0($a2)              #apo8ikeuei to id
addi $a2, $a2, 4

sw $a0, 0($a2)              #apo8ikeuei to value tou xrhsth
addi $a2, $a2, 4

addi $a1, $a1, 1            #counter++

move $v0, $a2               #epistrefei to head
move $v1, $a1               #epistrefei to counter
jr $ra

error1:
li $v0, 4                   #Print error message
la $a0, gemathLista
syscall

move $v0, $a2               #epistrefei to head
move $v1, $a1               #epistrefei to counter
jr $ra

#------------synarthsi 3---------------
syn3:

li $t0, 0
beq $a1, $t0, error2         #an h lista einai adeia na mhn sinexisei

addi $a1, $a1, -1
addi $a2, $a2, -8

li $v0, 4                   #Print error message
la $a0, epitixeiaDiagrafhs
syscall

move $v0, $a2               #epistrefei to head
move $v1, $a1               #epistrefei to counter
jr $ra

error2:
li $v0, 4                   #Print error message
la $a0, adeiaLista
syscall

move $v0, $a2               #epistrefei to head
move $v1, $a1               #epistrefei to counter
jr $ra

#------------synarthsi 4---------------
syn4:

bgt  $a0, $a1, error3       #an den iparxei stoixeio se auth th 8esh na mhn sinexisei

li $t0, 1
while4:
beq $a0, $t0, exitwhile4    #paei sth 8esh tou node
addi $a2, $a2, 8
addi $t0, $t0, 1
j while4
exitwhile4:
addi $a2, $a2, 4            # paei sto value

li $v0, 4                   #Print  message
la $a0, stoixeio
syscall

lw $a0, 0($a2)              #print int
li $v0, 1
syscall

jr $ra

error3:
li $v0, 4                   #Print error message
la $a0, la8os8esh
syscall

jr $ra