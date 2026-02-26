case class Robot(
  val bearing: Bearing,
  val coordinates: (Int, Int),
) {
  def turnLeft: Robot = {
    val updatedBearing = bearing match {
      case Bearing.South => Bearing.East
      case Bearing.East => Bearing.North
      case Bearing.North => Bearing.West
      case Bearing.West => Bearing.South
    }
    this.copy(bearing = updatedBearing)
  }

  def turnRight: Robot = 
    turnLeft.turnLeft.turnLeft

  def advance: Robot = {
    val (x, y) = coordinates
    val updatedCoordinates = bearing match {
      case Bearing.South => (x, y - 1)
      case Bearing.East => (x + 1, y)
      case Bearing.North => (x, y + 1)
      case Bearing.West => (x - 1, y)
    }
    this.copy(coordinates = updatedCoordinates)
  }

  def simulate(commands: String) =
    commands.foldLeft(this) { case (acc, command) =>
      command match {
        case 'R' => acc.turnRight
        case 'L' => acc.turnLeft
        case 'A' => acc.advance
        case _ => throw new IllegalArgumentException("")
      }
    }
}

enum Bearing {
  case South, North, West, East
}