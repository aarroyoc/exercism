def response(hey_bob):
    ends_question_mark = hey_bob.strip().endswith("?")
    all_capital_letters = hey_bob.isupper()
    
    if ends_question_mark and all_capital_letters:
        return "Calm down, I know what I'm doing!"
    elif ends_question_mark:
        return "Sure."
    elif all_capital_letters:
        return "Whoa, chill out!"
    elif hey_bob.isspace() or len(hey_bob) == 0:
        return "Fine. Be that way!"
    else:
        return "Whatever."
