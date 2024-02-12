import 'DecimalCounter.dart';

void main() {
  var counter = DecimalCounter(3, 87);

  counter.increment();
  print("Текущее значение счетчика: ${counter.getCurrentValue()}");

  counter.decrement();
  print("Текущее значение счетчика: ${counter.getCurrentValue()}");
}