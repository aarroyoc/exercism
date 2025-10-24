"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
    if year % 4 == 0
        if year % 100 == 0
            if year % 400 == 0
                true
            else
                false
            end
        else
            true
        end
    else
        false
    end
end

