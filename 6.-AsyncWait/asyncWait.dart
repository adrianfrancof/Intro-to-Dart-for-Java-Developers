//async/await, which allows you to write asynchronous code as if it were synchronous
//animates the calculation of the first five decimals of π.

import 'dart:html';
import 'dart:math' show Random;

// We changed 5 lines of code to make this sample nicer on
// the web (so that the execution waits for animation frame, 
// the number gets updated in the DOM, and the program ends 
// after 500 iterations).

Future<void> main() async {
  print('Compute π using the Monte Carlo method.');
  var output = querySelector("#output");
  await for (var estimate in computePi().take(500)) {
    print('π ≅ $estimate');
    output?.text = estimate.toStringAsFixed(5);
    await window.animationFrame;
  }
}

/// Generates a stream of increasingly accurate estimates of π.
Stream<double> computePi({int batch: 100000}) async* {
  var total = 0;
  var count = 0;
  while (true) {
    var points = generateRandom().take(batch);
    var inside = points.where((p) => p.isInsideUnitCircle);
    total += batch;
    count += inside.length;
    var ratio = count / total;
    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int? seed]) sync* {
  final random = Random(seed);
  while (true) {
    yield Point(random.nextDouble(), random.nextDouble());
  }
}

class Point {
  final double x, y;
  const Point(this.x, this.y);
  bool get isInsideUnitCircle => x * x + y * y <= 1;
}