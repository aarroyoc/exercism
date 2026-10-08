function transform(ch)
    if ch == '-'
        "_"
    elseif ch == ' ' || isdigit(ch)
        ""
    elseif isuppercase(ch)
        String(['-', lowercase(ch)])
    elseif ch in 'α':'ω'
        "?"
    else
        String([ch])
    end
end

function clean(str)
    s = ""
    cv = collect(str)
    for c in cv
        s *= transform(c)
    end
    s
end
