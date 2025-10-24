function success_rate(speed)
    if speed == 0
        0.0
    elseif speed < 5
        1.0
    elseif speed < 9
        0.9
    elseif speed < 10
        0.8
    else
        0.77
    end
end

function production_rate_per_hour(speed)
    221 * speed * success_rate(speed)
end

function working_items_per_minute(speed)
    floor(Int, production_rate_per_hour(speed) / 60)
end
