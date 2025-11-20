case class DNA(strand: String) {
  def nucleotideCounts: Either[String, Map[Char, Int]] = {
    val counts = collection.immutable.Map(
      'G' -> 0,
      'C' -> 0,
      'A' -> 0,
      'T' -> 0,
    )

    strand.foldLeft(Right(counts): Either[String, Map[Char, Int]]) { (acc, c) =>
      if(counts.contains(c)) {
        acc.map { cts =>
          cts + (c -> (cts(c) + 1))
        }
      } else {
        Left("invalid strand")
      }
    }
  }
}