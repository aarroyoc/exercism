import java.util.List;
import java.util.ArrayList;

class PrimeFactorsCalculator {

    List<Long> calculatePrimeFactorsOf(long number) {
        var factors = new ArrayList<Long>();
        var factor = 2L;
        while (number > 1) {
            if (number % factor == 0) {
                factors.add(factor);
                number /= factor;
            } else {
                factor++;
            }
        }
        return factors;
    }

}