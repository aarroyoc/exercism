case class ComplexNumber(val real: Double = 0, val imaginary: Double = 0) {
  def +(that: ComplexNumber) = ComplexNumber(real + that.real, imaginary + that.imaginary)
  def -(that: ComplexNumber) = ComplexNumber(real - that.real, imaginary - that.imaginary)
  def *(that: ComplexNumber) = ComplexNumber(real * that.real - imaginary * that.imaginary, imaginary * that.real + real * that.imaginary)
  def /(that: ComplexNumber) = {
    val d = Math.pow(that.real, 2) + Math.pow(that.imaginary, 2)
    val r = (this.real * that.real + this.imaginary * that.imaginary) / d
    val i = (this.imaginary * that.real - this.real * that.imaginary) / d
    ComplexNumber(r, i)
  }
  def abs: Double = Math.sqrt(real * real + imaginary * imaginary)
  def conjugate: ComplexNumber = ComplexNumber(real, -imaginary)
}

object ComplexNumber {
  def exp(c: ComplexNumber) = ComplexNumber(
    real = Math.exp(c.real) * Math.cos(c.imaginary),
    imaginary = Math.exp(c.real) * Math.sin(c.imaginary),
  )
}