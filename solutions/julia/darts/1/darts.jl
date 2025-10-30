function score(x, y)
    d = dist_to_center(x, y)
    if d <= 1
        return 10
    elseif d <= 5
        return 5
    elseif d <= 10
        return 1
    else
        return 0
    end
end

function dist_to_center(x, y)
    sqrt(x ^ 2 + y ^ 2)
end