object ScrabbleScore {

    private val letters = mapOf(
        'a' to 1,
        'e' to 1,
        'i' to 1,
        'o' to 1,
        'u' to 1,
        'l' to 1,
        'n' to 1,
        'r' to 1,
        's' to 1,
        't' to 1,
        'd' to 2,
        'g' to 2,
        'b' to 3,
        'c' to 3,
        'm' to 3,
        'p' to 3,
        'f' to 4,
        'h' to 4,
        'v' to 4,
        'w' to 4,
        'y' to 4,
        'k' to 5,
        'j' to 8,
        'x' to 8,
        'q' to 10,
        'z' to 10
    )

    fun scoreLetter(c: Char): Int =
        letters.getOrDefault(c.lowercase()[0], 0)

    fun scoreWord(word: String): Int {
        var score = 0
        for (c in word) {
            score += scoreLetter(c)
        }
        return score
    }
}
