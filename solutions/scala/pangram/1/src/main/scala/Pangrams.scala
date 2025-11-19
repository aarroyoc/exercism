object Pangrams {
  def isPangram(input: String): Boolean = {
    val letters = input
        .toUpperCase
        .filter(_.isLetter)
        .toSet
        .size
    letters == 26
  }
}

