object Etl {
  def transform(scoreMap: Map[Int, Seq[String]]): Map[String, Int] = {
    scoreMap.foldLeft(Map.empty[String, Int]) { case (acc, (score, letters)) =>
      acc ++ letters.foldLeft(Map.empty[String, Int]) { case (accx, letter) => 
        accx + (letter.toLowerCase -> score)
      }
    }
  }
}
