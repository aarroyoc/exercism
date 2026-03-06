def factors(value):
    result = []
    factor = 2
    while value > 1:
        if value % factor == 0:
            result.append(factor)
            value = value // factor
        else:
            factor += 1
    return result
