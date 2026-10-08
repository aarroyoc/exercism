function clean_ingredients(dish_name, dish_ingredients)
    (dish_name, Set(dish_ingredients))
end

function check_drinks(drink_name, drink_ingredients)
    if isdisjoint(ALCOHOLS, drink_ingredients)
        drink_name * " Mocktail"
    else
        drink_name * " Cocktail"
    end
end

function categorize_dish(dish_name, dish_ingredients)
    if issubset(dish_ingredients, VEGAN)
        dish_name * ": VEGAN"
    elseif issubset(dish_ingredients, VEGETARIAN)
        dish_name * ": VEGETARIAN"
    elseif issubset(dish_ingredients, PALEO)
        dish_name * ": PALEO"
    elseif issubset(dish_ingredients, KETO)
        dish_name * ": KETO"
    else
        dish_name * ": OMNIVORE"
    end
end

function tag_special_ingredients(dish)
    name, ingredients = dish
    special = intersect(ingredients, SPECIAL_INGREDIENTS)
    (name, Set(special))
end

function compile_ingredients(dishes)
    ingredients = Set()
    for dish in dishes
        union!(ingredients, dish)
    end
    ingredients
end

function separate_appetizers(dishes, appetizers)
    setdiff(dishes, appetizers)
end

function singleton_ingredients(dishes, intersection)
    all_ingredients = Set()
    for dish in dishes
        union!(all_ingredients, dish)
    end
    setdiff(all_ingredients, intersection)
end
