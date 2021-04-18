void main() {
  //A variable declared as final can be set only once
  // and if you try to change its content later, you’ll
  // get an error. For example, you won’t be able to
  // successfully compile this code
  final name = "Alberto";
  //name = "John"; // Error: name is final and cannot be changed

//   You can also notice that final can automatically infer
//  the type exactly like var does. This
// keyword can be seen as a "restrictive var" as it
//  deduces the type automatically but does not
// allow changes.

  // Very popular - Automatic type deduction
  final name1 = "Alberto";
  // Generally unnecessary - With type annotation
  final String nickName = "Robert";

//   Later on we will analyze in detail the const keyword,
//  which is the "brother" of final, and it has very
//  important performance impacts on Flutter.
// While coding you can keep this rule in mind: use final
//  when you know that, once assigned, the value will
//  never change in the future. If you know that the value
//  might change during the time use var and think
//  whether it’s the case to annotate the type or not.
}
