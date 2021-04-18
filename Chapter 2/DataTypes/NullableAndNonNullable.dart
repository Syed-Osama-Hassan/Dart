void main() {
  // Trying to access a variable before it's been assigned will cause a
  // compilation error.
  int value;
  // print("$value"); // Illegal, doesn't compile
// If you don’t initialize a variable, it’s automatically
// set to null but that’s an error because Dart
// has non-nullability enabled by default. In order to
// successfully compile you have to initialize the
// variable as soon as it’s declared:

// 1.
  int value1 = 0;
  print("$value1");
// 2.
  int value2;
  value2 = 0;
  print("$value2");

// In the first case the variable is assigned immediately
// and that’s what we recommend to do as much as possible.
// The second case is still valid because value is assigned
// before it’s ever accessed. It wouldn’t have worked if you
// had written this:
  // ERROR - usage made before assignment
  int value3;
  //print("$value3"); Error
  //value3 = 0;

  //  you won’t have the need to do this:
  String name = "John";
  if (name != null) {
    print(name);
  }
  // The compiler guarantees that it can’t be null and
  // thus no null-checks are required.

// In Dart you can also declare nullable types which doesn’t
// require to be initialized before being accessed and
// thus they’re allowed to be null. Nullables are the
// counterpart of non-nullable types because the usage
// of null is allowed (but the additional type safety
// degree is lost).
  int? val;
  print("$val"); // Legal, it prints 'null'

// If you append a question mark at the end of the type,
// you get a nullable type. For safety, they would require
// a manual null checks in order to avoid undesired
// exceptions but, in most of the cases,
// sticking with the default non-nullability is fine.

//  Nullable types that support the index operator []
// need to be called with the ?[] syntax. null
// is returned if the variable is also null.
  String? name1 = "Alberto";
  String? first1 = name?[0]; // first = 'A';
  String? name2;
  String? first2 = name?[0]; // first = 'null';

// When you’re sure that a nullable expression isn’t null,
// you can add a ! at the end to convert it to the
// non-nullable version.
  int? nullable = 0;
  int notNullable = nullable!;

// The ! (called "bang operator") converts a nullable
// value (int?) into a non-nullable value
// (int) of the same type. An exception is thrown
// if the nullable value is actually null.
  int? nullable1;
// An exception is thrown
  int notNullable1 = nullable!;

// If you need to convert a nullable variable into a
// non-nullable subtype, use the typecast operator as
  num? v = 5;
  int otherValue = v as int;
// You wouldn’t be able to do int otherValue = value!
// because the bang operator works only when the type
// is the same. In this example, we have a num and an int
// so there’s the need for a cast.

// Even if it isn’t a real conversion, the operator ??
// can be used to produce a non-nullable
// value from a nullable one.
  int? n = 10;
  int nonN = nullable ?? 0;

// If the member on the left (nullable) is non-null,
// return its value; otherwise, evaluate and
// return the member of the right (0).
// Remember that when you’re working with nullable values,
// the member access operator (.) is not available.
// Instead, you have to use the null-aware member access
// operator (?.):
  double? pi = 3.14;
  final round1 = pi.round(); // No
  final round2 = pi?.round(); // Ok
}
