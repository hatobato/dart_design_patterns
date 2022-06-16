import 'Duck.dart';
import 'FlyNoWay.dart';
import 'MuteQuack.dart';

class RubberDuck extends Duck {
  RubberDuck() {
    flyBehavior = FlyNoWay();
    quackBehavioir = MuteQuack();
  }
}
