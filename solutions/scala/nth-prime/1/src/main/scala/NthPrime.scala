object NthPrime {
  def prime(n: Int): Option[Long] = {
    if (n > 0) {
      var i = 1
      var prime = 2
      while (i < n) {
        prime += 1
        if (isPrime(prime)) {
          i += 1
        }
      }
      Some(prime)
    } else None
  }

  private def isPrime(n: Int): Boolean = 
    (2 to n/2).forall(n % _ != 0)
}