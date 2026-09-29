if (.strand1 | length) != (.strand2 | length) then "strands must be of equal length" | halt_error
else
  (.strand1 | explode) as $s1 |
  (.strand2 | explode) as $s2 |
  reduce range($s1 | length) as $i (0; if $s1[$i] != $s2[$i] then . + 1 end)
end
