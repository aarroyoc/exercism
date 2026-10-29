function demote(n)
    if n isa Float64
        UInt8(ceil(n))
    elseif n isa Integer
        Int8(n)
    else
        throw(MethodError(demote, (n,)))
    end
end

function preprocess(coll)
    if coll isa Vector
        reverse(map(demote, coll))
    elseif coll isa Set
        sort(map(demote, collect(coll)), rev=true)
    else
        throw(MethodError(preprocess, (coll,)))
    end
end
