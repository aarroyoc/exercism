function message(msg)
    strs = split(msg)
    strip(join(strs[2:end], " "))
end

function log_level(msg)
    starting = findfirst("[", msg)
    ending = findfirst("]", msg)
    lowercase(msg[starting.start+1:ending.start-1])
end

function reformat(msg)
    m = message(msg)
    l = log_level(msg)
    "$m ($l)"
end
