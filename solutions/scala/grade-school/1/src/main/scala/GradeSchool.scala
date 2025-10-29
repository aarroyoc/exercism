class School {
  type DB = Map[Int, Seq[String]]

  private var data: DB = Map.empty

  def add(name: String, g: Int) = {
    val students = data.getOrElse(g, Seq.empty)
    val updatedStudents = students :+ name
    data = data + (g -> updatedStudents)
  }

  def db: DB = data

  def grade(g: Int): Seq[String] = 
    data.getOrElse(g, Seq.empty)

  def sorted: DB = {
    val keys = data.keySet.toSeq.sorted
    keys.foldLeft(Map.empty)((acc: DB, key: Int) => acc + (key -> data(key).sorted))
  }
}

