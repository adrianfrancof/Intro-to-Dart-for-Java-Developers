// If the function is called with any string other than 'circle' or 'square', it throws an exception.
// The Dart SDK defines classes for many common exceptions, or you can implement the Exception class to create more specific exceptions or (as in this example) you can throw a string that describes the problem encountered.
// When an exception is encountered, DartPad reports Uncaught. To see information that's more helpful, wrap the code in a try-catch statement and print the exception. As an optional exercise, check out this DartPad example.
// To use a single quote inside a string, either escape the embedded quote using slash ('Can\'t create $type.') or specify the string with double quotes ("Can't create $type.").

import 'dart:math';

//Option 2: Create a factory constructor
abstract class Shape{
  factory Shape(String type){
    if(type == 'circle') return Circle(2);
    if(type =='square') return Square(2);
    throw 'Can\'t create $type.';
  }
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

void main(List<String> args) {
  //final circle = Circle(2);
  // final square = Square(2);

  // final circle = shapeFactory('circle');
  // final square = shapeFactory('square');

  final circle = Shape('circle');
  final square = Shape('square');

  print(circle.area);
  print(square.area);
}