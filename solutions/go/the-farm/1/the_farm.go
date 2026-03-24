package thefarm

import "fmt"
import "errors"

func DivideFood(fc FodderCalculator, cows int) (float64, error) {
    totalAmount, err := fc.FodderAmount(cows)
    if err != nil {
        return 0, err
    }
    factor, err := fc.FatteningFactor()
    if err != nil {
        return 0, err
    }
    return totalAmount*factor/float64(cows), nil
}

func ValidateInputAndDivideFood(fc FodderCalculator, cows int) (float64, error) {
    if cows < 1 {
        return 0, errors.New("invalid number of cows")
    } else {
        return DivideFood(fc, cows)
    }
}

type InvalidCowsError struct {
    cows int
    message string
}

func (e *InvalidCowsError) Error() string {
    return fmt.Sprintf("%d cows are invalid: %s", e.cows, e.message)
}

func ValidateNumberOfCows(cows int) error {
    if cows == 0 {
        return &InvalidCowsError{
            cows: cows,
            message: "no cows don't need food",
        }
    } else if cows < 0 {
        return &InvalidCowsError{
            cows: cows,
            message: "there are no negative cows",
        }
    } else {
        return nil
    }
}
