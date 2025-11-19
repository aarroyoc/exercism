object ArmstrongNumbers {
  def isArmstrongNumber(n: Int): Boolean = {
    val dgs = digits(n)
    val armstrong = dgs.map { x =>
      scala.math.pow(x, dgs.size)
    }.sum
    n == armstrong
  }

  private def digits(n: Int): List[Int] = {
    var a = n
    val dgs = scala.collection.mutable.ListBuffer.empty[Int]
    while (a > 9) {
      val r = a % 10
      a /= 10
      dgs += r
    }
    dgs += a
    dgs.toList
  }
}