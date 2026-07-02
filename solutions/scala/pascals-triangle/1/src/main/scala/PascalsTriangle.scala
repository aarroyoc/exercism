import scala.collection.mutable.ListBuffer

object PascalsTriangle {
  def rows(n: Int): List[List[Int]] = {
    if (n < 1) List()
    else if(n == 1) List(List(1))
    else {
      val previous = PascalsTriangle.rows(n - 1)
      val row = ListBuffer[Int]()
      for(i <- 0 until n) {
        if(i == 0 || i == n-1 ) {
          row += 1
        } else {
          row += previous(previous.size - 1)(i-1) + previous(previous.size - 1)(i)
        }
      }
      previous :+ row.toList
    }
  }
}