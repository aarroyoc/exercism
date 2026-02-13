object Bob {
  def response(statement: String): String = {
    val questionMark = statement.strip.endsWith("?")
    val yell = statement.exists(_.isLetter) && statement.forall(c => !c.isLetter || c.isUpper)
    val silence = statement.forall(c => c.isWhitespace)
    if(silence) "Fine. Be that way!"
    else if(yell && questionMark) "Calm down, I know what I'm doing!"
    else if(yell) "Whoa, chill out!"
    else if(questionMark) "Sure."
    else "Whatever."
  }
}
