import 'Duck.dart';
import 'FlyWithWings.dart';
import 'Quack.dart';

class MallardDuck extends Duck {
  MallardDuck() {
    flyBehavior = FlyWithWings();
    quackBehavioir = Quack();
  }
}
