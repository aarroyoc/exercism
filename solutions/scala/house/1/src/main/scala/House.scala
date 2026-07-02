object House {
  private val verses = List(
    "the house that Jack built",
    "the malt that lay",
    "the rat that ate",
    "the cat that killed",
    "the dog that worried",
    "the cow with the crumpled horn that tossed",
    "the maiden all forlorn that milked",
    "the man all tattered and torn that kissed",
    "the priest all shaven and shorn that married",
    "the rooster that crowed in the morn that woke",
    "the farmer sowing his corn that kept",
    "the horse and the hound and the horn that belonged to"
  )
  def recite(start: Int, end: Int): String = {
    val rhyme = StringBuilder()
    for(m <- start to end) {
      rhyme.append("This is ")
      rhyme.append(verses(m-1))
      for (n <- m-2 to 0 by -1) {
        if (n == 0) {
          rhyme.append(" in ")
        } else {
          rhyme.append(" ")
        }
        rhyme.append(verses(n))
      }
      rhyme.append(".\n")
    }
    rhyme.append("\n")
    rhyme.toString
  }
}