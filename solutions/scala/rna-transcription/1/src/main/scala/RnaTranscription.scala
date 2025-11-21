object RnaTranscription {
  def toRna(strand: String): Option[String] = {
    strand
      .foldLeft(Option("")) { (acc, c) =>
        rnaComplement(c) match {
          case Some(x) => acc.map(_ + x)
          case None => None
        }
      }
  }

  private val rnaComplements = Map(
    'G' -> 'C',
    'C' -> 'G',
    'T' -> 'A',
    'A' -> 'U',
  )

  private def rnaComplement(c: Char): Option[Char] =
    rnaComplements.get(c)
}