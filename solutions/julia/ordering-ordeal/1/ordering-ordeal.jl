function sortquantity!(qty)
    a = sortperm(qty, rev=true)
    sort!(qty, rev=true)
    a
end

function sortcustomer(cust, srtperm)
    cust[srtperm]
end

function production_schedule!(cust, qty)
    qts = sortquantity!(qty)
    sortcustomer(cust, qts), sortperm(qts)
end
