void main() {
// You can assign to the bool type only the literals
//  true or false, which are both compile-time constants..
  bool test = 5 == 0; // false, == is not assignment operator,
  // it compares the value and written true or false
  bool test2 = !test; // has the opposite value of test, ! is negation operator
  var oops = 0.0 / 0.0; // evaluates to 'Not a Number' (NaN)
}
