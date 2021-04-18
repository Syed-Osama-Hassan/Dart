void main() {
//   Dart has two type of numbers:
// • int. 64-bit at maximum, depending on the platform,
//  integer values. This type ranges from -2^63 to 2^63-1.
// • double. 64-bit double-precision floating point numbers
//  that follow the classic IEEE 754 standard definition.

// You should always use double or int. We will see,
//  with generic types, a special case in which
// num is needed but in general you can avoid it
  var a = 1; // int
  var b = 1.0; // double
  int x = 8;
  double y = b + 6;
  num z = 10 - y + x;

  // 7 is a compile-time constant
  const valueA = 7;
  // Operations among constant values are constant
  const valueB = 2 * valueA;

  // Exponential representation of a number
  var exp = 1.35e2; // equivalent as 1.35 x 10^2
  // Hexadecimal representation of a number
  var hex = 0xF1A; // equals to F1A in base 16 (3866 in base 10)

  // Good Practices
  // Very likely, during your coding journey, you’ll have
  //  at some point the need to parse numbers from
  // strings or similar kinds of manipulations.
  String value = "17";
  var a1 = int.parse(value); // String-to-int conversion
  var b1 = double.parse("0.98"); // String-to-double conversion
  var c1 = int.parse("13", radix: 6); // Converts from 13 base 6

// In the opposite direction, which is the conversion
// into a string, there is toString() with all its variants:
  String v1 = 100.toString(); // v1 = "100";
  String v2 = 100.123.toString(); // v2 = "100.123";
  String v3 = 100.123.toStringAsFixed(2); // v3 = "100.12";

  //   When converting numbers from a string, the method
  // parse() can fail if the input is malformed such as
  //  "12_@4.49". You’d better use one of the
  // following solutions (we will cover nullable types later):
  // 1. If the string is not a number, val is null
  double? value1 = double.tryParse("12@.3x_"); // null
  double? value2 = double.tryParse("120.343"); // 120.343
  // 2. The onError callback is called when parsing fails
  var ab1 = int.parse("1_6", onError: (value) => 0); // 0
  var ab2 = int.parse("16", onError: (value) => 0); // 16

  // Keep in mind that parse() is deprecated: you should
  // prefer tryParse(). What’s important to
  // keep in mind is that a plain parse("value") call
  // is risky because it assumes the string is alreadywell-formed.
}
