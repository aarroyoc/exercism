function cleanupname(name)
    name |> (s -> replace(s, "-" => " ")) |> strip
end

function firstletter(name)
    ((c -> String([c])) ∘ first ∘ cleanupname)(name)
end

function initial(name)
    name |> firstletter |> uppercase |> (s -> s * ".")
end

function couple(name1, name2)
    i1 = initial(name1)
    i2 = initial(name2)
    "❤ $i1  +  $i2 ❤"
end
