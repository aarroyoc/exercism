function raindrops(number)
    text = ""
    if number % 3 == 0
        text *= "Pling"
    end
    if number % 5 == 0
        text *= "Plang"
    end
    if number % 7 == 0
        text *= "Plong"
    end
    if text == ""
        text *= "$number"
    end
    text
end
