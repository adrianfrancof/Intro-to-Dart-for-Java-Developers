// The Dart language doesn't include an interface keyword because every class defines an interface.

// Open the Shapes example in DartPad (or continue using your copy).

// Add a CircleMock class that implements the Circle interface:


// class CircleMock implements Circle {}
// You should see a "Missing concrete implementations" error because CircleMock doesn't inherit the implementation of Circle—it only uses its interface. Fix this error by defining the area and radius instance variables:

// class CircleMock implements Circle {
//   num area = 0;
//   num radius = 0;
// }
// Observation

// Even though the CircleMock class doesn't define any behaviors, it's valid Dart—the analyzer raises no errors.
// The area instance variable of CircleMock implements the area getter of Circle.

import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    if (type == 'circleMock') return CircleMock(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  //num area = 0;
  num radius = 0;
  CircleMock(this.radius);
  num get area => pi * pow(radius, 2);
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');

  final circleMock = Shape('circleMock');
  print(circle.area);
  print(square.area);
  print(circleMock.area);

}