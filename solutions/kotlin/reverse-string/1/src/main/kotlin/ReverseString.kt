fun reverse(input: String): String {
    val chars = input.toCharArray()
    val sb = StringBuilder(input.length)
    for(i in input.length - 1 downTo 0) {
        sb.append(chars[i])
    }
    return sb.toString()
}
