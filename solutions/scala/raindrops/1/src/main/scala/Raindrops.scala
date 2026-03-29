object Raindrops {
  def convert(n: Int): String = {
    val sb = new StringBuilder()
    if(n % 3 == 0) {
      sb.append("Pling")
    }
    if(n % 5 == 0) {
      sb.append("Plang")
    }
    if(n % 7 == 0) {
      sb.append("Plong")
    }
    if(sb.length == 0) {
      sb.append(n)
    }
    sb.toString
  }
}

