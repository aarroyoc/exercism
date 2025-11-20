object PythagoreanTriplet {
  def isPythagorean(triplet: (Int, Int, Int)): Boolean = {
    val (a, b, c) = triplet
    a < b && b < c && a * a + b * b == c * c
  }

  def pythagoreanTriplets(from: Int, end: Int): Seq[(Int, Int, Int)] =
    for {
      a <- from to end
      b <- a to end
      c <- b to end
      if isPythagorean((a, b, c))
    } yield (a, b, c)

  def pythagoreanTripletsSum(sum: Int): Seq[(Int, Int, Int)] =
    for {
      a <- 1 to sum
      b <- a to sum
      c <- b to sum
      if a + b + c == sum
      if isPythagorean((a, b, c))
    } yield (a, b, c)
}
