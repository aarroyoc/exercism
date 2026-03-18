def egg_count(display_value):
    number = 0
    while display_value > 1:
        digit = display_value & 1
        number += digit
        display_value = display_value >> 1
    number += display_value
    return number