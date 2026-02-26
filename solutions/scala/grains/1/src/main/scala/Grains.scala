object Grains {
  def square(n: Int): Option[BigInt] = {
    if (n > 64 || n < 1) None
    else {
      Some(BigInt(2).pow(n - 1))
    }
  }

  def total: BigInt = {
    (1 to 64)
      .map(square(_).get)
      .sum
  }
}