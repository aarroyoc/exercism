object Darts {

    fun score(x: Number, y: Number): Int {
        val dX = x.toDouble()
        val dY = y.toDouble()
        val dist = Math.sqrt((dX * dX) + (dY * dY))

        return if (dist > 10) {
            0
        } else if(dist > 5) {
            1
        } else if(dist > 1) {
            5
        } else {
            10
        }
    }
}
