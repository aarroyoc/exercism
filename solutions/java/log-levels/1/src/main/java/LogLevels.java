public class LogLevels {
    
    public static String message(String logLine) {
        int colonsPosition = logLine.indexOf(':');
        return logLine.substring(colonsPosition + 2).strip();
    }

    public static String logLevel(String logLine) {
        int colonsPosition = logLine.indexOf(':');
        return logLine.substring(1, colonsPosition - 1).toLowerCase();
    }

    public static String reformat(String logLine) {
        return message(logLine) + " (" + logLevel(logLine) + ")";
    }
}
