import scala.collection.mutable.ListBuffer

object PrimeFactors {
  def factors(number: Long): List[Int] = {
    val f = ListBuffer[Int]()
    var n = number
    var currentFactor = 2
    while(n > 1) {
      if (n % currentFactor == 0) {
        f += currentFactor
        n /= currentFactor
      } else {
        currentFactor += 1
      }
    }
    f.toList
  }
}