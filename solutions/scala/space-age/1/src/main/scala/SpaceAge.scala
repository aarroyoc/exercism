object SpaceAge {
  private val EARTH_YEAR_IN_SECONDS = 31_557_600
  private val MERCURY_ORBITAL_PERIOD = 0.2408467
  private val VENUS_ORBITAL_PERIOD = 0.61519726
  private val MARS_ORBITAL_PERIOD = 1.8808158
  private val JUPITER_ORBITAL_PERIOD = 11.862615
  private val SATURN_ORBITAL_PERIOD = 29.447498
  private val URANUS_ORBITAL_PERIOD = 84.016846
  private val NEPTUNE_ORBITAL_PERIOD = 164.79132
  
  def onEarth(age: Double): Double = age / EARTH_YEAR_IN_SECONDS

  def onVenus(age: Double): Double = age / (EARTH_YEAR_IN_SECONDS * VENUS_ORBITAL_PERIOD)

  def onMercury(age: Double): Double = age / (EARTH_YEAR_IN_SECONDS * MERCURY_ORBITAL_PERIOD)

  def onMars(age: Double): Double = age / (EARTH_YEAR_IN_SECONDS * MARS_ORBITAL_PERIOD)

  def onJupiter(age: Double): Double = age / (EARTH_YEAR_IN_SECONDS * JUPITER_ORBITAL_PERIOD)

  def onSaturn(age: Double): Double = age / (EARTH_YEAR_IN_SECONDS * SATURN_ORBITAL_PERIOD)

  def onUranus(age: Double): Double = age / (EARTH_YEAR_IN_SECONDS * URANUS_ORBITAL_PERIOD)

  def onNeptune(age: Double): Double = age / (EARTH_YEAR_IN_SECONDS * NEPTUNE_ORBITAL_PERIOD)
}
