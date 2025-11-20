case class Triangle(a: Double, b: Double, c: Double) {
  private def validTriangle =
    a + b >= c && b + c > a && a + c > b
  
  def equilateral: Boolean = this.validTriangle && a == b && b == c

  def isosceles: Boolean = this.validTriangle && (a == b || a == c || b == c)

  def scalene: Boolean = this.validTriangle && a != b && b != c
}