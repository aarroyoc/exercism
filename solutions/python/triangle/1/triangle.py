def equilateral(sides):
    [a, b, c] = sides
    return triangle_inequality(a, b, c) and a == b and b == c


def isosceles(sides):
    [a, b, c] = sides
    return triangle_inequality(a, b, c) and (
        a == b or
        a == c  or
        b == c)


def scalene(sides):
    [a, b, c] = sides
    return triangle_inequality(a, b, c) and (
        a != b and b != c and a != c
    )

def triangle_inequality(a, b, c):
    return a > 0 and a + b >= c and b + c >= a and a + c >= b