def is_valid(isbn):
    stripped_isbn = isbn.replace("-", "")
    if len(stripped_isbn) != 10:
        return False

    sum = 0
    for i in range(9):
        try:
            sum += int(stripped_isbn[i]) * (10 - i)
        except ValueError:
            return False

    try:
        if stripped_isbn[9] == 'X':
            sum += 10
        else:
            sum += int(stripped_isbn[9])
    except ValueError:
        return False

    return sum % 11 == 0
    
