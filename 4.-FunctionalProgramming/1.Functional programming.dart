// In functional programming you can do things like the following:

// Pass functions as arguments.
// Assign a function to a variable.
// Deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying).
// Create a nameless function that can be used as a constant value (also called a lambda expression; lambda expressions were added to Java in the JDK 8 release).
// Dart supports all those features. In Dart, even functions are objects and have a type, Function. This means that functions can be assigned to variables or passed as arguments to other functions. You can also call an instance of a Dart class as if it were a function, as in this example.

// The following example uses imperative (not functional-style) code:

// Observation

// When using string interpolation, the string ${'a' * length} evaluates to "the character 'a' repeated length times."

// Use more Iterable features
// The core List and Iterable classes support fold(), where(), join(), skip(), and more. Dart also has built-in support for maps and sets.

//  Observations

// skip(1)skips the first value, 1, in the values list literal.
// take(3)gets the next 3 values—2, 3, and 5—in the values list literal.
// The remaining values are skipped.

String scream(int lenght) => "A${'a' * lenght}h!";

main(){
  final values = [1,2,3,5,10,50];

  //imperative code
  for (var lenght in values){
    print(scream(lenght));
  }
  
  //functional code
  values.map(scream).forEach(print);
  values.skip(1).take(3).map(scream).forEach(print);
}
  