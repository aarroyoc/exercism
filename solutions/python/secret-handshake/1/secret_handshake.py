WINK = 1
DOUBLE_BLINK = 2
CLOSE_EYES = 4
JUMP = 8
REVERSE = 16

def commands(binary_str):
    number = int(binary_str, 2)
    output = list()
    if number & WINK:
        output.append("wink")
    if number & DOUBLE_BLINK:
        output.append("double blink")
    if number & CLOSE_EYES:
        output.append("close your eyes")
    if number & JUMP:
        output.append("jump")
    if number & REVERSE:
        output.reverse()
    return output
