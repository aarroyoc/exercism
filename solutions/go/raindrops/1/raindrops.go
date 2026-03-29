package raindrops

import "fmt"

func Convert(number int) string {
	text := ""
    if number % 3 == 0 {
        text += "Pling"
    }
    if number % 5 == 0 {
        text += "Plang"
    }
    if number % 7 == 0 {
        text += "Plong"
    }
    if text == "" {
        return fmt.Sprintf("%d", number)
    } else {
        return text
    }
}
