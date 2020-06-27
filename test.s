.text
main:   # Put your code here
        addi            t6, x0, 0x33
        addi            t6, t6, 0x11
        add             t6, t6, t6
        add		t6, x0, x0
        beq		t6, x0, finish

deadend: beq	t6, x0, deadend        

finish:
        lw		t4, 0(x0)
        lw		t5, 4(x0)
        sw		t5, 0xFF(t4)
        beq		t6, x0, deadend


