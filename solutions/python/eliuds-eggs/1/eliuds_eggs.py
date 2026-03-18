def egg_count(display_value):
    number = 0
    while display_value > 1:
        digit = display_value & 1
        print(digit)
        number += digit
        display_value = display_value >> 1
    print(display_value)
    number += display_value
    return number