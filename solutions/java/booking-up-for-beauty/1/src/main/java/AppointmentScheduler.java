import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

class AppointmentScheduler {

    public LocalDateTime schedule(String appointmentDateDescription) {
        var parser = DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");
        return LocalDateTime.parse(appointmentDateDescription, parser);
    }

    public boolean hasPassed(LocalDateTime appointmentDate) {
        return LocalDateTime.now().isAfter(appointmentDate);
    }

    public boolean isAfternoonAppointment(LocalDateTime appointmentDate) {
        var hour = appointmentDate.getHour();
        return hour >= 12 && hour < 18;
    }

    public String getDescription(LocalDateTime appointmentDate) {
        var printer = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy");
        var printer2 = DateTimeFormatter.ofPattern("h:mm a.");
        return "You have an appointment on " + printer.format(appointmentDate) + ", at " + printer2.format(appointmentDate);
    }

    public LocalDate getAnniversaryDate() {
        return LocalDate.of(
            LocalDate.now().getYear(),
            9,
            15
        );
    }
}
