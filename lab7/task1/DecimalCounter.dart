class DecimalCounter {
  late int _minValue;
  late int _maxValue;
  late int _currentValue;

  DecimalCounter(int minValue, int maxValue) {
    if (minValue > maxValue) {
      throw ArgumentError("Минимальное значение не может быть больше максимального");
    }

    _minValue = minValue;
    _maxValue = maxValue;
    _currentValue = minValue; 
  }

  int getCurrentValue() {
    return _currentValue;
  }

  void increment() {
    if (_currentValue < _maxValue) {
      _currentValue++;
    }
  }

  void decrement() {
    if (_currentValue > _minValue) {
      _currentValue--;
    }
  }
}