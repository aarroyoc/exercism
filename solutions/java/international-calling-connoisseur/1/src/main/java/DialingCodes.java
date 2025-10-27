import java.util.Map;
import java.util.HashMap;

public class DialingCodes {

    private final Map<Integer, String> codes = new HashMap<>();

    public Map<Integer, String> getCodes() {
        return this.codes;
    }

    public void setDialingCode(Integer code, String country) {
        this.codes.put(code, country);
    }

    public String getCountry(Integer code) {
        return this.codes.get(code);
    }

    public void addNewDialingCode(Integer code, String country) {
        if (!codes.keySet().contains(code) && !codes.values().contains(country)) {
            setDialingCode(code, country);
        }
    }

    public Integer findDialingCode(String country) {
        for(Integer code: codes.keySet()) {
            if(codes.get(code).equals(country)) {
                return code;
            }
        }
        return null;
    }

    public void updateCountryDialingCode(Integer code, String country) {
        var previousCode = findDialingCode(country);
        if (previousCode != null) {
            codes.remove(previousCode);
        }
        addNewDialingCode(code, country);
    }
}
