import scala.util.Random
import scala.collection.mutable.Set

class Robot {
  private val letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  private val digits = "0123456789"
  private val rnd = Random()
  private val cache: Set[String] = Set()
  var name: String = {
    val n = generateName()
    cache += n
    n
  }
  
  private def choose(chars: String): Char = {
    val index = rnd.nextInt(chars.size)
    chars(index)
  }

  private def generateName(): String = {
    val a = choose(letters)
    val b = choose(letters)
    val c = choose(digits)
    val d = choose(digits)
    val e = choose(digits)
    val n = s"$a$b$c$d$e"
    n
  }

  def reset(): Unit = {
    var proposedName = generateName()
    while (cache.contains(proposedName)) {
      proposedName = generateName()
    }
    this.name = proposedName
    cache += proposedName
  }
}