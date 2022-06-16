import 'MallardDuck.dart';
import 'RubberDuck.dart';

void main() {
  MallardDuck mallardDuck = MallardDuck();
  RubberDuck rubberDuck = RubberDuck();
  mallardDuck.performFly();
  mallardDuck.performQuack();
  rubberDuck.performFly();
  rubberDuck.performQuack();
}
