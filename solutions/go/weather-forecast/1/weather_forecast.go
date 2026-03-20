// Package weather has functions related to forecast weather.
package weather

var (
    // CurrentCondition weather condition.
	CurrentCondition string
    // CurrentLocation weather location.
	CurrentLocation  string
)

// Forecast Make a weather forecast.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
