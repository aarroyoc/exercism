function get_vector_of_wagons(args...)
    [args...]
end

function fix_vector_of_wagons(each_wagons_id, missing_wagons)
    a = popfirst!(each_wagons_id)
    b = popfirst!(each_wagons_id)
    push!(each_wagons_id, a)
    push!(each_wagons_id, b)
    pos = findfirst(x -> x == 1, each_wagons_id)
    i = 1
    for m in missing_wagons
        insert!(each_wagons_id, pos + i, m)
        i += 1
    end
    each_wagons_id
end

function add_missing_stops(route, stops...)
    vec_stops = [stop[2] for stop in stops]
    Dict("to" => route["to"], "from" => route["from"], "stops" => vec_stops) 
end

function extend_route_information(route; more_route_information...)
    merge(route, more_route_information)
end
