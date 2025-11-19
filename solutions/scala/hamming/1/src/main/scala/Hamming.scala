object Hamming {
  def distance(dnaStrandOne: String, dnaStrandTwo: String): Option[Int] = {
    if (dnaStrandOne.size != dnaStrandTwo.size) {
      None
    } else {
      val count = dnaStrandOne
                    .zip(dnaStrandTwo)
                    .filter(p => p._1 != p._2)
                    .size
      Some(count)
    }
  }
}
