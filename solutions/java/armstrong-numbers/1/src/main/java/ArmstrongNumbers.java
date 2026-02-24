import java.util.List;
import java.util.LinkedList;

class ArmstrongNumbers {

    boolean isArmstrongNumber(int numberToCheck) {
        List<Integer> dgs = digits(numberToCheck);
        int size = dgs.size();
        int sum = 0;
        for(int i = 0;i<size;i++) {
            sum += (int) Math.pow(dgs.get(i), size);
        }
        return sum == numberToCheck;
    }

    List<Integer> digits(int number) {
        var list = new LinkedList();
        var m = number;
        while(m > 9 ) {
            list.add(m % 10);
            m /= 10;
        }
        list.add(m);
        return list;
    }

}
