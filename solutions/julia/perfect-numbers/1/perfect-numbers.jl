function isperfect(n)
    sum(factors(n)) == n
end

function isabundant(n)
    sum(factors(n)) > n
end

function isdeficient(n)
    sum(factors(n)) < n
end

function factors(n)
    if n < 1
        throw(DomainError(n))
    end
    
    fact = Int64[]
    for x in 1:(n - 1)
        if n % x == 0
            push!(fact, x)
        end
    end
    fact
end
