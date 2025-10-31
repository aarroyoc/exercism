object CollatzCalculator {
    fun computeStepCount(start: Int): Int {
        if(start < 1) {
            throw IllegalArgumentException("number must be positive")
        }

        var steps = 0
        var n = start;

        while (n > 1) {
            if (n % 2 == 0) {
                n /= 2
            } else {
                n = (3 * n) + 1
            }
            steps++
        }
        return steps
    }
}
