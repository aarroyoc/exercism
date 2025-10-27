public class SalaryCalculator {

    private static final double BASE_SALARY = 1000.0;
    private static final double MAX_SALARY = 2000.0;
    
    public double salaryMultiplier(int daysSkipped) {
        return daysSkipped >= 5 ? 0.85 : 1.0; 
    }

    public int bonusMultiplier(int productsSold) {
        return productsSold >= 20 ? 13 : 10;
    }

    public double bonusForProductsSold(int productsSold) {
        return productsSold * bonusMultiplier(productsSold);
    }

    public double finalSalary(int daysSkipped, int productsSold) {
        return Math.min(MAX_SALARY, salaryMultiplier(daysSkipped) * BASE_SALARY + bonusForProductsSold(productsSold));
    } 
}
