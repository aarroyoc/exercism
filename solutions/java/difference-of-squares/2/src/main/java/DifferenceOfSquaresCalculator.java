import java.util.stream.IntStream;

class DifferenceOfSquaresCalculator {

    int computeSquareOfSumTo(int input) {
        int sum = 0;
        for(int i = 1; i<=input; i++) {
            sum += i;
        }
        return sum * sum;
    }

    int computeSumOfSquaresTo(int input) {
        return IntStream.rangeClosed(1, input)
            .map(x -> x * x)
            .sum();
    }

    int computeDifferenceOfSquares(int input) {
        return computeSquareOfSumTo(input) - computeSumOfSquaresTo(input);
    }

}
