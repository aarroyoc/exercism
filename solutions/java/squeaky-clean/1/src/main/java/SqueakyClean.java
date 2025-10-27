class SqueakyClean {
    static String clean(String identifier) {
        var sb = new StringBuilder();
        boolean nextIsUpperCase = false;
        for(char c: identifier.toCharArray()) {
            if(Character.isWhitespace(c)) {
                sb.append('_');
            } else if(c == '-') {
                nextIsUpperCase = true;
            } else if(c == '4') {
                sb.append('a');
            }  else if(c == '3') {
                sb.append('e');
            }  else if(c == '0') {
                sb.append('o');
            }  else if(c == '1') {
                sb.append('l');
            } else if(c == '7') {
                sb.append('t');
            }  else if(nextIsUpperCase) {
                nextIsUpperCase = false;
                sb.append(Character.toUpperCase(c));
            } else if(Character.isLetter(c)) {
                sb.append(c);
            }
        }
        return sb.toString();
    }
}
