import math

def prime(number):
    if number < 1:
        raise ValueError("there is no zeroth prime")
    elif number == 1:
        return 2
    # odd prime numbers
    i = 2
    prime = 3
    while i < number:
        prime += 2
        if is_prime(prime):
            i += 1
    return prime

def is_prime(n):
    return not any(map(lambda x: n % x == 0, range(3, int(math.sqrt(n))+1)))
