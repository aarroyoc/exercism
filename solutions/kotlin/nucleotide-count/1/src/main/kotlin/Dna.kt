class Dna(
    private val strand: String
) {

    init {
        if (strand.count { c -> c != 'A' && c != 'C' && c != 'G' && c != 'T'} > 0) {
            throw IllegalArgumentException("Invalid strand")
        }
    }
    
    val nucleotideCounts: Map<Char, Int>
        get() {
            val count = mutableMapOf<Char, Int>('A' to 0, 'C' to 0, 'G' to 0, 'T' to 0)
            strand.forEach { c ->
                count.put(c, count.getOrDefault(c, 0) + 1)
            }
            return count
        }
}
