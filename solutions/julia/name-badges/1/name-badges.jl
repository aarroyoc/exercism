function print_name_badge(id, name, department)
    str = ""
    if !ismissing(id)
        str *= "[$id] - "
    end
    
    str *= "$name - "
    
    if isnothing(department)
        str *= "OWNER"
    else
        str *= uppercase(department)
    end
    str
end

function salaries_no_id(ids, salaries)
    if any(ismissing, ids)
        no_ids_salaries = map((x -> if ismissing(x[1]) x[2] else missing end), zip(ids, salaries))
        no_ids_salaries |> skipmissing |> sum
    else
        0
    end
end
