void main() {
  // No differences between s and t
  var s = "Double quoted";
  var t = 'Single quoted';

// A very nice feature of the language is the possibility
// of combining expressions into strings by using
//  ${expr} (a shorthand to call the toString() method).
  // Interpolate an integer into a string
  var age = 25;
  var myAge = "I am $age years old";
  // Expressions need '{' and '}' preceeded by $
  var test = "${25.abs()}";
  // This is redundant, don't do it because ${} already calls toString()
  var redundant = "${25.toString()}";

  // Very useful for SQL queries, for example
  var query = """
  SELECT name, surname, age
  FROM people
  WHERE age >= 18
  ORDER BY name DESC
  """;

  // In Dart there isn’t a char type representing a single
  // character because there are only strings. If
  // you want to access a particular character of a
  // string you have to use the [] operator:

  final name = "Alberto";
  print(name[0]); // prints "A"
  print(name[2]); // prints "b";

//   In case of a string longer than a single line, avoid the + operator and prefer a simple line break.
// It’s just something recommended by the Dart for styling reasons, there are no performance
// implications at all. Try to be as consistent as possible with the language guidelines!
// Ok
  var s1 = 'I am going to the'
      'second line';
  // Still ok but '+' can be omitted
  var s2 = 'I am going to the' + 'second line';
  print(s1);
  print(s2);

// Since strings are immutable, making too many concatenations with the + operator might be
// inefficient. In such cases it’d be better if you used a StringBuffer which efficiently concatenates
// strings. For example:
  var value = "";
  for (var i = 0; i < 100; ++i) {
    value += "$i ";
  }

// Each time the + operator is called, value is assigned with a new instance which merges the old
// value and the new one. In other words, this code creates for 100 times a new String object,
// one for each iteration, and it’s not optimal at all. Here’s the way to go:
  var buffer = StringBuffer();
  for (var i = 0; i < 100; ++i) buffer.write("$i ");
  var value1 = buffer.toString();

// This is much better because StringBuffer doesn’t internally
// create a new string on each iteration;
// the string is created only once at the moment in which
// toString() is called. When you have to do long loops
//  that manipulate strings, avoid using the + operator
//  and prefer a buffer.
}
