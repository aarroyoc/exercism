object PerfectNumbers {
  def classify(n: Int): Either[String, NumberType] = {
    if(n > 0) {
      val sum = factors(n).sum
      if(sum == n) {
        Right(NumberType.Perfect)
      } else if (sum > n) {
        Right(NumberType.Abundant)
      } else {
        Right(NumberType.Deficient)
      }
    } else {
      Left("Classification is only possible for natural numbers.")
    }
  }

  def factors(n: Int): Seq[Int] = {
    (1 until n).filter(n % _ == 0)
  }
}

enum NumberType {
  case Abundant, Perfect, Deficient
}