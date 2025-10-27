class CalculatorConundrum {
    public String calculate(int operand1, int operand2, String operation) {
        if (operation == "+") {
            return String.format("%d + %d = %d", operand1, operand2, operand1 + operand2);
        }
        if (operation == "*") {
            return String.format("%d * %d = %d", operand1, operand2, operand1 * operand2);
        }
        if (operation == "/") {
            try {
                return String.format("%d / %d = %d", operand1, operand2, operand1 / operand2);
            } catch (ArithmeticException e) {
                throw new IllegalOperationException("Division by zero is not allowed", e);
            }
        }
        if (operation == null) {
            throw new IllegalArgumentException("Operation cannot be null");
        }
        if (operation == "") {
            throw new IllegalArgumentException("Operation cannot be empty");
        }
        throw new IllegalOperationException("Operation '" + operation + "' does not exist");
    }
}
