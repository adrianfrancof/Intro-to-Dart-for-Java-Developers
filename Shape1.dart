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