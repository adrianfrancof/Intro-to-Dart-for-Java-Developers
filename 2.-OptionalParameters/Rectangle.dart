// Observations
// this.origin, this.width, and this.height use the shorthand trick for assigning instance variables inside a constructor's declaration.
// this.origin, this.width, and this.height are optional named parameters. Named parameters are enclosed in curly braces ({}).
// The this.origin = const Point(0, 0) syntax specifies a default value of Point(0,0) for the origin instance variable. The specified default must be a compile-time constant. This constructor supplies default values for all three instance variables.

import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;
  
  Rectangle({this.origin = const Point(0,0), this.width = 0, this.height = 0});
  
  @override
  String toString() => 'Origin; (${origin.x}, ${origin.y}), width: $width, height: $height';
}

main() {
  
  print(Rectangle(origin: const Point(10,20),width:100, height:200));
  print(Rectangle(origin: const Point(10,10)));
  print(Rectangle(width:200));
  print(Rectangle());
  
} // Included main() to suppress uncaught exception.