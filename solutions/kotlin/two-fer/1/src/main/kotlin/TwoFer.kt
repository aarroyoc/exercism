fun twofer(name: String? = null): String =
    name?.let {
        "One for $name, one for me."
    } ?: "One for you, one for me."
