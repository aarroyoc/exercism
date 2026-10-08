function today(birds_per_day)
    birds_per_day[end]
end

function increment_todays_count(birds_per_day)
    birds_per_day[end] += 1
    birds_per_day
end

function has_day_without_birds(birds_per_day)
    length(birds_per_day[birds_per_day .== 0]) > 0
end

function count_for_first_days(birds_per_day, num_days)
    sum(birds_per_day[1:num_days])
end

function busy_days(birds_per_day) 
    length(birds_per_day[birds_per_day .>= 5])
end

function average_per_day(week1, week2)
    (week1 + week2) ./ 2
end
