enum Fruits { Apple, Banana, Pear, Mango, Orange }
void main() {
  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;
  print(liked.toString()); // prints 'Fruits.Apple'
  print(disliked.toString()); // prints 'Fruits.Banana'

  // Each enum has an associated number, called index, starts
  // with 0. Can be access by using the index property.
  var a = Fruits.Apple.index; // 0
  var b = Fruits.Banana.index; // 1
  var c = Fruits.Pear.index; // 2
}
