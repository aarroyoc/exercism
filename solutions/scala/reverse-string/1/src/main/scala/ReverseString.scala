object ReverseString {
  def reverse(str: String): String = {
    val sb = StringBuilder()
    for(i <- str.size until 0 by -1) {
      sb += str(i - 1)
    }
    sb.toString
  }
}
