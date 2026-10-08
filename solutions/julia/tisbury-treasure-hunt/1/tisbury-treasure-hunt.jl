function get_coordinate(line)
    _, coord = line
    coord
end

function convert_coordinate(coordinate)
    Tuple(coordinate)
end

function compare_records(azara_record, rui_record)
    azara_pos = convert_coordinate(get_coordinate(azara_record))
    rui_pos = rui_record[2]
    azara_pos == rui_pos
end

function create_record(azara_record, rui_record)
    if compare_records(azara_record, rui_record)
        (azara_record[2], rui_record[1], rui_record[3], azara_record[1])
    else
        ()
    end
end
