class Clock(ihour: Int, iminute: Int) extends Equals {
  private def hour: Int = Math.floorMod(ihour + Math.floorDiv(iminute, 60), 24)
  private def minute: Int = Math.floorMod(iminute, 60)

  override def canEqual(that: Any) = 
    that.isInstanceOf[Clock]

  override def equals(that: Any) =
    that match {
      case clock: Clock => {
        clock.hour == this.hour && clock.minute == this.minute
      }
      case _ => false
    }

  def this(iminute: Int) = this(0, iminute)
  
  def +(that: Clock): Clock =
    Clock(this.hour + that.hour, this.minute + that.minute)

  def -(that: Clock): Clock = 
    Clock(this.hour - that.hour, this.minute - that.minute)
}