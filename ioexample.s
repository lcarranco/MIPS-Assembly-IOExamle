# a program that expalins the purpose of syscalls
# a program that shows a few different uses for syscalls
# this program requests an integer value as input then doubles it and prints the result back to the console

        .data
str1:   .asciiz "Enter the number: "
        .align 2                            # move to a word boundary
res:    .space 4                            # reserve space to store result
        .text
        .globl main

main:   li		$v0, 4		    # code to print string                          # $v0 = 4
        la		$a0, str1
        syscall

        li		$v0, 5		    # code to read integer                          # $v0 = 5
        syscall

        move 	        $t0, $v0            # move the value read to $t0                    # $t0 = $v0
        add		$t1, $t0, $t0       # multiply by 2                                 # $t1 = $t0 + $t0
        sw		$t1, res($0)        # store result in memory

        li		$v0, 1		    # code to print integer                         # $v0 = 1
        move 	        $a0, $t1            # the value to be printed in $a0                # $a0 = $t1
        syscall

        li		$v0, 10		    # code for program end                          # $v0 = 10
        syscall 
        
        
               
        
