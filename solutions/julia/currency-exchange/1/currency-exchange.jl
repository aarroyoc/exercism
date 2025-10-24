function exchange_money(budget, exchange_rate)
    budget / exchange_rate
end

function get_change(budget, exchanging_value)
    budget - exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    denomination * number_of_bills
end

function get_number_of_bills(amount, denomination)
    floor(Int, amount / denomination)
end

function get_leftover_of_bills(amount, denomination)
    amount % denomination
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    real_exchange_rate = exchange_rate + (exchange_rate * spread / 100)
    bills = get_number_of_bills(exchange_money(budget, real_exchange_rate), denomination)
    bills * denomination
end
