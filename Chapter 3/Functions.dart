void main() {
  print(checkEven(4));
  printName();

  // Assign a function to a variable
  bool Function(int) checker = checkOdd;
  // Use the variable that represents the function
  print(checker(3)); // true

  // ANONYMOUS FUNCTION
  bool Function(int) isEven = (int value) => value % 2 == 0;
  print(isEven(9)); // false

// Single line. You can use the arrow syntax when you have
// one-liner statements. This example declares a function
// with no parameters that returns a double.
  final anon = () => 5.8 + 12;

// Multiple lines. Use brackets and return when you have to
// implement a logic that’s longer than one line.
  final anon1 = (String nickname) {
    var myName = "Alberto";
    myName += nickname;
    return myName;
  };

// We recommend to always write down the type of the parameter
// even if it’s not required by the compiler. You can decide
// whether the type has to appear or not. Using final and var
// is allowed but it doesn’t make much sense.
  String Function(String) printName1 = (String n) => n.toUpperCase();
  String Function(String) printName2 = (final n) => n.toUpperCase();
  String Function(String) printName3 = (var n) => n.toUpperCase();
  String Function(String) printName4 = (n) => n.toUpperCase();
}

bool checkEven(int value) {
  return value % 2 == 0;
}

// When the body of the function contains only one line,
// you can omit the braces and the return statement in favor
// of the "arrow syntax". It works with expressions and not
// with statements.

// Arrow syntax
bool checkEven1(int value) => value % 2 == 0;

// Arrow syntax with method calls
bool checkEven2(int value) => checkEven(value);

// Does NOT work
//bool checkEven3(int value) => if (value % 2 == 0) ... ;

// 1. This function does not return a value
void test() {}

// 2. No return type so this function returns dynamic.
// Don't do this.
test1() {}

// When you don’t need a function to return a value,
// simply make it void.

// Interestingly, if you have a void function with an one-liner
// body, you can use the arrow syntax. The function doesn’t
// return anything because of the void but you’re allowed to
// do it anyway.
void printName() => print("John Doe");

// FUNCTION TYPE
// Dart is truly an OOP language because even functions are
// objects and the type is called...
// Function! A return type is required while the parameters
// list is optional:

// Declare a function
bool checkOdd(int value) => value % 2 != 0;
