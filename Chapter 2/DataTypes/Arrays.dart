void main() {
  // In dart there is no equivalent for arrays. Dart uses
  // generic list that are intended to be instances of List<T>
  // Lists are 0-indexed collections and items can be
  //  randomly accessed using the [] operator,
  // which will throw an exception if you exceed the bounds.

  //use var or final
  final myList = [-3.1, 5, 3.0, 4.4];
  final value = myList[1];

  //Array methods
  print("length ${myList.length}");
  myList.add(5.5); // Add 5.5 at the end of the list
  print(myList);
  print(myList.contains(5)); // return true
}
