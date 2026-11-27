struct TreasureChest{T}
    password::String
    treasure::T
end

function get_treasure(password_attempt, chest)
    if chest.password == password_attempt
        chest.treasure
    end
end

function multiply_treasure(multiplier, chest)
    TreasureChest(chest.password, repeat(Vector([chest.treasure]), multiplier))
end
