import 'DisplayElement.dart';
import 'Observer.dart';
import 'WeatherData.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  double _temperature = 0.0;
  double _humidity = 0.0;
  late WeatherData _weatherData;

  CurrentConditionsDisplay(WeatherData weatherData) {
    _weatherData = weatherData;
    weatherData.registerObserver(this);
  }
  void update() {
    _temperature = _weatherData.getTemerature();
    _humidity = _weatherData.getHumidity();
    display();
  }

  void display() {
    print('現在の気象状況: 温度 $_temperature°C 湿度$_humidity%');
  }
}
