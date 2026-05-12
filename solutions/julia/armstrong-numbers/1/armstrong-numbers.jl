function isarmstrong(n)
    ds = digits(n)
    l = length(ds)
    sum(ds .^ l) == n
end


function digits(n)
    ds = Int64[]
    while n >= 10
        push!(ds, n % 10)
        n = div(n, 10)
    end
    push!(ds, n)
end
