import scala.math.sqrt

object Darts {
  def score(x: Double, y: Double): Int = {
    val dist = sqrt(x * x + y * y)
    
    if(dist > 10) 0
    else if(dist > 5) 1
    else if(dist > 1) 5
    else 10
  }
}