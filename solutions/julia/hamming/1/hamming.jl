"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("strands must be of the same length"))
    end
    
    sum(codeunits(a) .!= codeunits(b))
end
