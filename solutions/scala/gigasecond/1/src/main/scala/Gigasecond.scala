import java.time.LocalDate
import java.time.LocalDateTime

object Gigasecond {
  private val gigasecond = 1000000000L 
  
  def add(startDate: LocalDate): LocalDateTime = Gigasecond.add(startDate.atTime(0, 0))

  def add(startDateTime: LocalDateTime): LocalDateTime = startDateTime.plusSeconds(gigasecond)
}
