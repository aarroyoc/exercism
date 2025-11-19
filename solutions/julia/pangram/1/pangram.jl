"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    letters = Set()
    for c in uppercase(input)
        if 'A' <= c <= 'Z'
            push!(letters, c)
        end
    end
    length(letters) == 26
end

