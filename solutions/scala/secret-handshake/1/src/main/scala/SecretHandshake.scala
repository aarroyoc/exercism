import scala.collection.mutable.ListBuffer

object SecretHandshake {
  enum Command(val n: Int) {
    case Wink extends Command(1)
    case DoubleBlink extends Command(2)
    case CloseYourEyes extends Command(4)
    case Jump extends Command(8)
    case Reverse extends Command(16)

    def in(m: Int): Boolean = (n & m) > 0 
  }
  
  def commands(cmd: Int): List[String] = {
    val output = ListBuffer[String]()
    if (Command.Wink.in(cmd)) {
      output += "wink"
    }
    if (Command.DoubleBlink.in(cmd)) {
      output += "double blink"
    }
    if (Command.CloseYourEyes.in(cmd)) {
      output += "close your eyes"
    }
    if (Command.Jump.in(cmd)) {
      output += "jump"
    }
    if (Command.Reverse.in(cmd)) output.reverse.toList
    else output.toList
  }
}