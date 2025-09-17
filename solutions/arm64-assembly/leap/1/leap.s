.text
.globl leap_year

// args
// x0 - year
// return
// x0 - TRUE (1) / FALSE (0) 
leap_year:
        // divide by 4
        mov x1, #4
        udiv x2, x0, x1
        mul x3, x2, x1
        cmp x0, x3
        bne leap_year_no_leap_year

        // divide by 100
        mov x1, #100
        udiv x2, x0, x1
        mul x3, x2, x1
        cmp x0, x3
        bne leap_year_yes_leap_year

        // divide by 400
        mov x1, #400
        udiv x2, x0, x1
        mul x3, x2, x1
        cmp x0, x3
        bne leap_year_no_leap_year

leap_year_yes_leap_year:
        mov x0, #1
        ret
leap_year_no_leap_year:
        mov x0, #0
        ret
