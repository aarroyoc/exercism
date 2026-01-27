object SumOfMultiples {
  def sum(factors: Set[Int], limit: Int): Int = {
    factors
      .flatMap(n => multiples(n, limit))
      .sum
  }

  def multiples(n: Int, limit: Int): List[Int] = (n until limit by n).toList
}

