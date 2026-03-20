public class EliudsEggs {
    public int eggCount(int number) {
        int output = 0;
        while (number > 1) {
            int digit = number & 1;
            number = number >> 1;
            output += digit;
        }
        output += number;
        return output; 
    }
}
