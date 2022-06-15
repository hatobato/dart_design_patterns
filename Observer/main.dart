import 'CurrentConditionsDisplay.dart';
import 'StatisticsDisplay.dart';
import 'WeatherData.dart';

void main() {
  WeatherData weatherData = WeatherData();
  CurrentConditionsDisplay currentDisplay =
      CurrentConditionsDisplay(weatherData);
  StatisticsDisplay statisticsDisplay = StatisticsDisplay(weatherData);
  weatherData.setMeasurements(20, 20, 30.4);
  weatherData.setMeasurements(25, 70, 29.2);
  weatherData.setMeasurements(30, 90, 29.2);
}
