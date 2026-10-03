function bob(stimulus)
    upcase = uppercase(stimulus) == stimulus && any(isletter, stimulus)
    question = endswith(rstrip(stimulus), "?")
    if question && upcase
        "Calm down, I know what I'm doing!"
    elseif question
        "Sure."
    elseif upcase
        "Whoa, chill out!"
    elseif length(strip(stimulus)) == 0
        "Fine. Be that way!"
    else
        "Whatever."
    end
end
