object EliudsEggs {

    fun eggCount(number: Int): Int{
        var n = number
        var count = 0
        while (n > 0) {
            val a = n and 1
            count += a
            n = n shr 1
        }
        return count
    }
}
