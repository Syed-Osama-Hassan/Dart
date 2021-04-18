void main() {
  // Dart is able to infer the type of the variable
  var age = 18; // age is integer
  var myName = "Jhon Doe"; // myName is string

  // Same as above, the only difference is that the
  // types have been typed explicitly
  int age1 = 18;
  String myName1 = "Jhon Doe";

  // Dynamic keyword can be used with any type.
  // Type of dynamic variable is evaluated at run-time
  // while var is evaluated at compile-time.
  // According to the dart guidelines:
  // 1. Prefer initializing variables with var as much as you can
  // 2.  When the type is not so easy to guess, initialize it explicitly to increase the readability of
  //     the code
  // 3. Use Object or dynamic only if it’s really needed but it’s almost never the case.
  print(age);
  print(myName);
  print(age1);
  print(myName1);
}
