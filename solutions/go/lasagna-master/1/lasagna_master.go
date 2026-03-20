package lasagnamaster

func PreparationTime(layers []string, timePerLayer int) int {
    if timePerLayer == 0 {
        return len(layers) * 2
    } else {
        return len(layers) * timePerLayer
    }
}

func Quantities(layers []string) (noodles int, sauce float64) {
    noodles = 0
    sauce = 0.0
    for i := 0; i < len(layers); i++ {
        switch layers[i] {
            case "noodles": noodles += 50
            case "sauce": sauce += 0.2
        }
    }
    return
}

func AddSecretIngredient(friend, my []string) {
    secret := friend[len(friend) - 1]
    my[len(my) - 1] = secret
}

func ScaleRecipe(quantities []float64, portions int) []float64 {
    newQuantities := []float64{}
    for i :=0 ; i < len(quantities); i++ {
        newQuantities = append(newQuantities, quantities[i] * float64(portions) / 2.0)
    }
    return newQuantities
}

// Your first steps could be to read through the tasks, and create
// these functions with their correct parameter lists and return types.
// The function body only needs to contain `panic("")`.
//
// This will make the tests compile, but they will fail.
// You can then implement the function logic one by one and see
// an increasing number of tests passing as you implement more
// functionality.
