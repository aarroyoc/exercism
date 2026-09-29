def steps:
  if . == 1 then 0
  elif . < 1 then "Only positive integers are allowed" | halt_error
  else
    if . % 2 == 0 then 1 + (. / 2 | steps)
    else 1 + (. * 3 + 1 | steps)
    end
  end;