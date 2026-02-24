public class Hamming {
    private final String leftStrand, rightStrand;
    
    public Hamming(String leftStrand, String rightStrand) {
        if (leftStrand.length() != rightStrand.length()) {
            throw new IllegalArgumentException("strands must be of equal length");
        }
        this.leftStrand = leftStrand;
        this.rightStrand = rightStrand;
    }

    public int getHammingDistance() {
        int distance = 0;
        for(int i = 0;i<leftStrand.length();i++) {
            if (leftStrand.charAt(i) != rightStrand.charAt(i)) {
                distance++;
            }
        }
        return distance;
    }
}
