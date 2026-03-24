package collatzconjecture

import "errors"

func CollatzConjecture(n int) (int, error) {
	if n < 1 {
        return 0, errors.New("only positive numbers")
    }
    var steps int = 0
    for n > 1 {
        steps++
        if n % 2 == 0 {
            n /= 2
        } else {
            n *= 3
            n++
        }
    }
    return steps, nil
}
