void main() {
  // If you don't want tp initialize the var immediately, use
  // the late keyword.
  late String name;

  // We will learn about the conditional statement later.
  // In this code snippet below only code inside if will execute
  // else will not execute
  if (true) {
    name = "John";
  } else {
    name = "Rock";
  }
  print(name);

  // The type of the variable is not so obvious at first glance
  // Is this a list? I guess so, "People" is plural...
  // but actually the function returns a String!
  var people = getPeople(true, 100);

  // This is better
  String people1 = getPeople(true, 100);

  // However, there isn’t a golden rule to follow because it’s up to your discretion. In general var
  // is fine, but if you feel that the type can make the code more readable you can definitely write
  // it.

  print(people);
  print(people1);
}

String getPeople(bool cond, int num) {
  return "John Doe";
}
