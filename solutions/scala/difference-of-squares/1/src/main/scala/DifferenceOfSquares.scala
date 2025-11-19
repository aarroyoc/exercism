object DifferenceOfSquares {

  def sumOfSquares(n: Int): Int = {
    (1 to n)
        .map(x => x * x)
        .reduce(_ + _)
  }

  def squareOfSum(n: Int): Int = {
    val s = (1 to n).reduce(_ + _)
    s * s
  }

  def differenceOfSquares(n: Int): Int = {
    squareOfSum(n) - sumOfSquares(n)
  }
}
