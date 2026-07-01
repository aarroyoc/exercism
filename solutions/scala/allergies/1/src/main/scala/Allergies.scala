enum Allergen(val value: Int) {
  case Eggs extends Allergen(1)
  case Peanuts extends Allergen(2)
  case Shellfish extends Allergen(4)
  case Strawberries extends Allergen(8)
  case Tomatoes extends Allergen(16)
  case Chocolate extends Allergen(32)
  case Pollen extends Allergen(64)
  case Cats extends Allergen(128)
}

object Allergies {
  def allergicTo(allergen: Allergen, value: Int) = {
    (allergen.value & value) > 0
  }

  def list(value: Int): List[Allergen] = {
    Allergen.values.filter(a => (a.value & value) > 0).toList
  }
}