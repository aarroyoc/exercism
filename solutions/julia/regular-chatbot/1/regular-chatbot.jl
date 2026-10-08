function is_valid_command(msg)
    occursin(r"^Chatbot[^\w]"i, msg)
end

function remove_emoji(msg)
    replace(msg, r"emoji[\d]+" => "")
end

function check_phone_number(number)
    if occursin(r"\(\+\d\d\) \d{3}-\d{3}-\d{3}", number)
        "Thanks! You can now download me to your phone."
    else
        "Oops, it seems like I can't reach out to $number"
    end
end

function getURL(msg)
    [m.match for m in eachmatch(r"[\w]+[.][\w]+", msg)]
end

function nice_to_meet_you(str)
    m = match(r"(?<surname>[\w]+), (?<name>[\w]+)", str)
    "Nice to meet you, $(m["name"]) $(m["surname"])"
end
