import java.util.Random;

class CaptainsLog {

    private static final char[] PLANET_CLASSES = new char[]{'D', 'H', 'J', 'K', 'L', 'M', 'N', 'R', 'T', 'Y'};

    private Random random;

    CaptainsLog(Random random) {
        this.random = random;
    }

    char randomPlanetClass() {
        var i = random.nextInt(10);
        return PLANET_CLASSES[i];
    }

    String randomShipRegistryNumber() {
        var number = random.nextInt(9000) + 1000;
        return "NCC-" + number;
    }

    double randomStardate() {
        return 41000.0 + random.nextDouble() * 1000.0;
    }
}
