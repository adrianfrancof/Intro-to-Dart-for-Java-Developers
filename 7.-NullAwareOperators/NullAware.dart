// Null-aware operators

// The new null-aware operators help you reduce the amount of code required to work with references that are potentially null. This feature is a collection of syntactic sugar for traversing (potentially null) object calls, conditionally setting a variable, and evaluating two (potentially null) expressions.

// ??

//   if null operator. `expr1 ?? expr2` evaluates to `expr1` if not `null`, otherwise `expr2`.


// ??=

//   null-aware assignment. `v ??= expr` causes `v` to be assigned `expr` only if `v` is `null`.


// x?.p

//   null-aware access. `x?.p` evaluates to `x.p` if `x` is not `null`, otherwise evaluates to `null`.


// x?.m()
  
//   null-aware method invocation. `x?.m()` invokes `m` only if `x` is not `null`.


void main() {
  // "if null" operator
  print(null ?? 'New in Dart 1.12');
  
  // null-aware assignment
  var x = null;
  x ??= 'are the null-aware operators, friendly to';
  print(x);
  
  // null-aware method invocation
  var isNull = null;
  print(isNull?.foo()); // null (does not throw exception)
}