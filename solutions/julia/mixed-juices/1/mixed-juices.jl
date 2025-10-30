function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy"
        return 0.5
    elseif juice == "Energizer" || juice == "Green Garden"
        return 1.5
    elseif juice == "Tropical Island"
        return 3
    elseif juice == "All or Nothing"
        return 5
    else
        return 2.5
    end
end

function wedges_from_lime(size)
    if size == "small"
        return 6
    elseif size == "medium"
        return 8
    else
        return 10
    end
end

function limes_to_cut(needed, limes)
    current = 0
    n_limes = 0
    for lime in limes
        if current >= needed
            return n_limes
        end
        current += wedges_from_lime(lime)
        n_limes += 1
    end

    return n_limes
end

function order_times(orders)
    times = Float64[]
    for order in orders
        push!(times, time_to_mix_juice(order))
    end
    times 
end

function remaining_orders(time_left, orders)
    time_used = 0
    order = 1
    while time_used < time_left && order <= length(orders)
        time_used += time_to_mix_juice(orders[order])
        order += 1
    end

    orders[order:end]
end
