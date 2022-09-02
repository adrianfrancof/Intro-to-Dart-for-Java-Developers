//Observations
// Each variable (even if it's a number) must either be initialized or be declared nullable by adding ? to its type declaration.
// The Dart compiler enforces library privacy for any identifier prefixed with an underscore. Library privacy generally means that the identifier is visible only inside the file (not just the class) that the identifier is defined in.
// By default, Dart provides implicit getters and setters for all public instance variables. You don't need to define your own getters or setters unless you want to enforce read-only or write-only variables, compute or verify a value, or update a value elsewhere.
// The original Java sample provided getters and setters for cadence and gear. The Dart sample doesn't need explicit getters and setters for those, so it just uses instance variables.
// You might start with a simple field, such as bike.cadence, and later refactor it to use getters and setters. The API stays the same. In other words, going from a field to a getter and setter is not a breaking change in Dart.

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}