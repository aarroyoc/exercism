class SpaceAge {
    static final double EARTH_YEAR_IN_SECONDS = 31557600;
    final double seconds;

    SpaceAge(double seconds) {
        this.seconds = seconds;
    }

    double getSeconds() {
        return this.seconds;
    }

    double onEarth() {
        return this.seconds / EARTH_YEAR_IN_SECONDS;
    }

    double onMercury() {
        return this.seconds / (EARTH_YEAR_IN_SECONDS * 0.2408467);
    }

    double onVenus() {
        return this.seconds / (EARTH_YEAR_IN_SECONDS * 0.61519726);
    }

    double onMars() {
        return this.seconds / (EARTH_YEAR_IN_SECONDS * 1.8808158);
    }

    double onJupiter() {
        return this.seconds / (EARTH_YEAR_IN_SECONDS * 11.862615);
    }

    double onSaturn() {
        return this.seconds / (EARTH_YEAR_IN_SECONDS * 29.447498);
    }

    double onUranus() {
        return this.seconds / (EARTH_YEAR_IN_SECONDS * 84.016846);
    }

    double onNeptune() {
        return this.seconds / (EARTH_YEAR_IN_SECONDS * 164.79132);
    }

}
