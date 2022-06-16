import 'FlyBehavior.dart';
import 'QuackBehavior.dart';

abstract class Duck {
  late FlyBehavior flyBehavior;
  late QuackBehavior quackBehavioir;

  void performQuack() {
    quackBehavioir.quack();
  }

  void performFly() {
    flyBehavior.fly();
  }

  void setFlyBehavior(FlyBehavior fb) {
    flyBehavior = fb;
  }

  void setQuackBehavior(QuackBehavior qb) {
    quackBehavioir = qb;
  }
}
