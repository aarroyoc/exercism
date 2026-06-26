.x * .x + .y * .y  as $dist |
if $dist > 100 then 0
elif $dist > 25 then 1
elif $dist > 1 then 5
else 10
end
