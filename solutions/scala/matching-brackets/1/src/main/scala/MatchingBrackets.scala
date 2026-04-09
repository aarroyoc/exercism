import scala.collection.mutable.ListBuffer

object MatchingBrackets {
  private val bracketTypes = "()[]{}"
  private val bracketMap = Map(
    '(' -> ')',
    '[' -> ']',
    '{' -> '}'
  )
  def isPaired(brackets: String): Boolean = {
    val chars = ListBuffer.empty[Char]

    for (c <- brackets) {
      if (bracketTypes.contains(c)) {
        if(chars.size > 0 && bracketMap.get(chars(0)) == Some(c)) {
          chars.remove(0)
        } else {
          c +=: chars
        }
      }
    }

    chars.size == 0
  }
}
