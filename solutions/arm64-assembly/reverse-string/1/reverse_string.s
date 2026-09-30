.text
.globl reverse

// x0 - string
reverse:
  mov x1, x0
go_till_end:
  ldrb w10, [x1]
  cmp w10, wzr
  beq end_of_str
  add x1, x1, #1
  b go_till_end
end_of_str:
  add x1, x1, #-1
do_reverse:
  cmp x0, x1
  bge end_of_reverse
  ldrb w10, [x1]
  ldrb w11, [x0]
  strb w10, [x0], 1
  strb w11, [x1], -1
  b do_reverse
end_of_reverse:
  ret
