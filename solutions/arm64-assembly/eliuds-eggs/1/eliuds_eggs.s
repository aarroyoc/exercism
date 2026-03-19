.text
.globl egg_count

egg_count:
  mov x1, #0
loop:
  cbz x0, exit
  and x2, x0, #0x1
  add x1, x1, x2
  lsr x0, x0, #1
  b loop
exit:
  mov x0, x1
  ret
