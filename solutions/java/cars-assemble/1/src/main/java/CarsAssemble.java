public class CarsAssemble {

    private static final int CARS_PER_HOUR = 221;

    private double successRate(int speed) {
        if (speed < 5) {
            return 1;
        } else if(speed < 9) {
            return 0.9;
        } else if(speed < 10) {
            return 0.8;
        } else {
            return 0.77;
        }
    }
    
    public double productionRatePerHour(int speed) {
        return successRate(speed) * speed * CARS_PER_HOUR;
    }

    public int workingItemsPerMinute(int speed) {
        return (int) (productionRatePerHour(speed) / 60); 
    }
}
