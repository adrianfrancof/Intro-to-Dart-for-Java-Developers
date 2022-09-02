// Factories, a commonly used design pattern in Java, have several advantages over direct object instantiation, such as hiding the details of instantiation, providing the ability to return a subtype of the factory's return type, and optionally returning an existing object rather than a new object.

// This step demonstrates two ways to implement a shape-creation factory:

// Option 1: Create a top-level function.
// Option 2: Create a factory constructor.

// Dart supports abstract classes.
// You can define multiple classes in one file.
// dart:math is one of Dart's core libraries. Other core libraries include dart:core, dart:async, dart:convert, and dart:collection.
// By convention, Dart library constants are lowerCamelCase (for example, pi instead of PI). If you're curious about the reasoning, see the style guideline PREFER using lowerCamelCase for constant names.
// The following code shows two getters that compute a value: num get area => pi * pow(radius, 2); // Circle num get area => pow(side, 2); // Square

import 'dart:math';

//Option 1: Create a top-level function
abstract class Shape{
  num get area;
}

class Circle implements Shape{
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius,2);
}

class Square implements Shape{
  final num side;
  Square(this.side);
  num get area => pow(side,2);
}

//Option 1: Create a top-level function
Shape shapeFactory(String type){
  if(type == 'circle') return Circle(2);
  if(type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

void main(List<String> args) {
  //final circle = Circle(2);
  // final square = Square(2);

  final circle = shapeFactory('circle');
  final square = shapeFactory('square');

  // final circle = Shape('circle');
  // final square = Shape('square');

  print(circle.area);
  print(square.area);
}