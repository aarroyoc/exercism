class Darts {
    int score(double xOfDart, double yOfDart) {
        double d = distance(xOfDart, yOfDart);
        if (d > 10) {
            return 0;
        } else if (d > 5) {
            return 1;
        } else if (d > 1) {
            return 5;
        } else {
            return 10;
        }
    }

    private double distance(double x, double y) {
        return Math.sqrt(Math.pow(x, 2.0) + Math.pow(y, 2.0));
    }
}
