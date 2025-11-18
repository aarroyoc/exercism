function create_inventory(items)
    dict = Dict()
    for item in items
        if item in keys(dict)
            dict[item] += 1
        else
            dict[item] = 1
        end
    end
    dict
end

function add_items(inventory, items)
    dict = copy(inventory)
    for item in items
        if item in keys(dict)
            dict[item] += 1
        else
            dict[item] = 1
        end
    end
    dict
end

function decrement_items(inventory, items)
    dict = copy(inventory)
    for item in items
        if item in keys(dict)
            dict[item] -= 1
            if dict[item] < 0
                dict[item] = 0
            end
        end
    end
    dict
end

function remove_item(inventory, item)
    dict = copy(inventory)
    delete!(dict, item)
    dict
end

function list_inventory(inventory)
    vect = Vector()
    for key in sort([key for key in keys(inventory)])
        if inventory[key] > 0
            push!(vect, key => inventory[key])
        end
    end
    vect
end
