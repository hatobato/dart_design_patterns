import 'Observer.dart';
import 'Subject.dart';

class WeatherData implements Subject {
  List<Observer> _observers = [];
  double _temperature = 0.0;
  double _humidity = 0.0;
  double _pressure = 0.0;

  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void notifyOvservers() {
    for (var observer in _observers) {
      observer.update();
    }
  }

  // 測定値が変更した際に実行されるメソッド
  measurementsChanged() {
    notifyOvservers();
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    measurementsChanged();
  }

  double getTemerature() {
    return _temperature;
  }

  // 湿度を取得
  double getHumidity() {
    return _humidity;
  }

  // 気圧を取得
  double getPressure() {
    return _pressure;
  }
}
