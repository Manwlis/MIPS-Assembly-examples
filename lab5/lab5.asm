.data
.globl main
.globl syn1
.globl syn2
.globl syn3
.globl syn4
.globl syn5
.globl syn6
.globl choice
.globl gemathLista
.globl adeiaLista
.globl epitixeiaDiagrafhs
.globl dwse8esh
.globl stoixeio
.globl la8os8esh
.globl dwseValue
.globl counter
.globl stoixeioid
.globl ari8mosStoixeiwn
.globl minMun1
.globl minMun2
.globl epKombo
.globl parag



choice: .asciiz "\n1.eisagwgh antikeimenoy\n2.diagrafh antikeimenou\n3.ektipwsh sigkekrimenou stoixeiou\n4.ektipwsh plh8ous\n5.ektipwsh min\n6.ektipwsh paragontikou\n7.eksodos\nepelekse (1-7): "
gemathLista: .asciiz "\nh lista einai gemath\n"
adeiaLista: .asciiz "\nh lista einai adeia\n"
epitixeiaDiagrafhs: .asciiz "\nepitixeia diagrafhs\n"
dwse8esh: .asciiz  "\ndwse 8esh stoixeiou pou 8es: "
stoixeioid: .asciiz "\nto id einai: "
stoixeio: .asciiz "\nto stoxeio einai: "
la8os8esh: .asciiz "\nden iparxei stoixeio se ayth th 8esh\n"
dwseValue: .asciiz "\ndwse value: "
ari8mosStoixeiwn: .asciiz "\nari8mos stoixeiwn: "
minMun1: .asciiz "\nto elaxisto einai: "
minMun2: .asciiz "\nme id: "
epKombo: .asciiz "\nepelekse kombo: "
parag: .asciiz "\n to paragontiko einai : "

array: 
.align 2
.space 800
counter: .word 0

.text
main:

la $t0, counter
lw $s1, 0($t0)             #s1 = counter

la $s2, array              #dieu8unsh array
while:

li $v0, 4                  #Print message
la $a0, choice
syscall

li $v0, 5                  #Read input
syscall
move $s0, $v0

beq $s0, 7, exit           # an s0 = 7 eksodos.
beq $s0, 1, eisagwghStoixeiou       #klp
beq $s0, 2, diagrafhStoixeiou
beq $s0, 3, emfanisiStoixeiou
beq $s0, 4, plh80s
beq $s0, 5, min
beq $s0, 6, anadromh

j while

eisagwghStoixeiou:
li $v0, 4                  #Print message
la $a0, dwseValue
syscall

li $v0, 5                  #Read input
syscall   
             
move $a0, $v0              #input
move $a1, $s1              #counter
move $a2, $s2              #head
jal syn1
move $s2, $v0              #epistrefei to neo head
move $s1, $v1              #epistrefei to neo counter

j while

diagrafhStoixeiou:
move $a1, $s1              #counter
move $a2, $s2              #head
jal syn2
move $s2, $v0              #epistrefei to neo head
move $s1, $v1              #epistrefei to neo counter

j while

emfanisiStoixeiou:
li $v0, 4                   #Print message
la $a0, dwse8esh
syscall

li $v0, 5                   #Read input
syscall

move $a0, $v0               #input
move $a1, $s1               #counter
la $a2, array               #head
jal syn3

j while

plh80s:
move $a1, $s1               #counter  
jal syn4

j while

min:
move $a1, $s1               #counter  
la $a0, array               #head
jal syn5
move $s6, $v0

li $v0, 4
la $a0, minMun1
syscall

li $v0, 1
lw $a0, 4($s6)
syscall

li $v0, 4
la $a0, minMun2
syscall

li $v0, 1
lw $a0, 0($s6)
syscall

j while

anadromh:

li $v0, 4
la $a0, epKombo
syscall

li $v0, 5
syscall

la $t5, array              #dieu8unsh array
bgt  $s1, $v0, errorm       #an den iparxei stoixeio se auth th 8esh na mhn sinexisei

li $t4, 1
whilem:
beq $v0, $t4, exitwhilem    #paei sth 8esh tou node
addi $t5, $t5, 8
addi $t4, $t4, 1
j whilem
exitwhilem:

lw $a0, 4($t5)
move $v0, $a0
jal syn6
move $s7, $v0


li $v0, 4
la $a0, parag
syscall

li $v0, 1
move $a0, $s7
syscall


j while
errorm:
li $v0, 4                   #Print error message
la $a0, la8os8esh
syscall

j while

exit:
li $v0, 10
syscall          #teloooos

#------------synarthsi 1---------------
syn1:
li $t0, 100
beq $a1, $t0, error1        #an h lista einai gemath na mhn sinexisei

move $t0,$a1

srl $t1, $t0, 8	            #t1 holds the top byte
andi $t0, $t0, 0x00FF       #t0 holds the bottom byte

sb $t1,1($a2)               #Store the bytes in the memory in the correct order
sb $t0,0($a2)
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
#------------synarthsi 2---------------
syn2:
li $t0, 0
beq $a1, $t0, error2         #an h lista einai adeia na mhn sinexisei

addi $a1, $a1, -1
addi $a2, $a2, -8

li $v0, 4                   #Print message
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
#------------synarthsi 3---------------
syn3:
bgt  $a0, $a1, error3       #an den iparxei stoixeio se auth th 8esh na mhn sinexisei

li $t0, 1
while4:
beq $a0, $t0, exitwhile4    #paei sth 8esh tou node
addi $a2, $a2, 8
addi $t0, $t0, 1
j while4
exitwhile4:

li $v0, 4                   #Print  message
la $a0, stoixeioid
syscall

li $v0, 1
lw $a0, 0($a2) 
syscall

li $v0, 4                   #Print  message
la $a0, stoixeio
syscall

lw $a0, 4($a2)              #print int
li $v0, 1
syscall

jr $ra

error3:
li $v0, 4                   #Print error message
la $a0, la8os8esh
syscall
jr $ra
#------------synarthsi 4---------------
syn4:
li $v0, 4                   #Print  message
la $a0, ari8mosStoixeiwn
syscall

li $v0, 1
move $a0, $a1
syscall

jr $ra
#------------synarthsi 5---------------
syn5:
move $t1, $a0  	           #t1 has the beginning of array
move $t2, $a1	           #t2 has the number of elements
li $t4, 0x7FFFFFFF 	   #t4 will hold the min element value
li $t5, 0 		   #t5 will hold the min element address

loop:
lw $t3, 4($t1)     	   #t3 holds the element
blt $t3, $t4, new_min	   #if new element is less than lesser branch
addi $t1, $t1, 8     	   #address + 8
addi $t2, $t2, -1	   #counter - 1

bne $t2, $zero, loop	#if counter != 0 go to loop
j end_loop			#else go to end_loop

new_min:
move $t4, $t3			#update min value
move $t5, $t1			#update min address
addi $t1, $t1, 8		#address + 8
addi $t2, $t2, -1		#counter - 1
bne $t2, $zero, loop	#if counter != 0 go to loop


end_loop:
move $v0, $t5			#return min address
jr $ra
#--------------synarthsh 6-------------------
syn6:
addiu $sp, $sp, -8
sw $ra, 0($sp) 
sw $a0, 4($sp) 

addi $t2, $a0, -1

move $t0, $v0

loopa:
beq   $t2, 1, loopaExit

add $v0, $v0, $t0

addi $t2, $t2, -1
j loopa
loopaExit:


addi $a0, $a0, -1
beq $a0, 1 , dromo
jal syn6
dromo:


lw $a0, 4($sp) 
lw $ra, 0($sp) 
addiu  $sp, $sp, 8
jr $ra



