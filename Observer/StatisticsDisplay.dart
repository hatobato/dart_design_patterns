import 'DisplayElement.dart';
import 'Observer.dart';
import 'Subject.dart';
import 'WeatherData.dart';

// 統計データ表示
class StatisticsDisplay implements Observer, DisplayElement {
  int _numReadings = 0;
  double _temp = 0.0;
  double _aveTemp = 0.0;
  double _maxTemp = 0.0;
  double _minTemp = 100.0;
  double _tempSum = 0.0;
  late WeatherData _weatherData;

  StatisticsDisplay(WeatherData weatherData) {
    _weatherData = weatherData;
    weatherData.registerObserver(this);
  }

  void update() {
    _temp = _weatherData.getTemerature();
    _tempSum += _temp;
    _numReadings++;
    _aveTemp = _tempSum / _numReadings;
    _maxTemp = _temp > _maxTemp ? _temp : _maxTemp;
    _minTemp = _temp < _minTemp ? _temp : _minTemp;
    display();
  }

  void display() {
    print('平均温度: $_aveTemp°C 最大温度: $_maxTemp°C 最小温度: $_minTemp°C');
  }
}
