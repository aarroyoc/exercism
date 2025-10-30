function rank_range()
    1:8
end

function file_range()
    'A':'H'
end

function ranks()
    collect(rank_range())
end

function files()
    collect(file_range())
end
