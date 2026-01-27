object BinarySearch {
  def find(items: List[Int], value: Int): Option[Int] = {
    var min = 0
    var max = items.length - 1
    var found: Option[Int] = None

    while (found == None && min <= max) {
      val mid = min + ((max - min) / 2)
      val currentValue = items(mid)
      if (currentValue == value) {
        found = Some(mid)
      } else if (currentValue > value) {
        max = mid - 1
      } else {
        min = mid + 1
      }
    }
    found
  }
}