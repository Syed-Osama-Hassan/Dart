void main() {
  // for loop
  // i++ is post increment by 1
  for (int i = 0; i < 5; i++) print("Number $i");

  // While loop
  // ++i is pre increment by 1
  var i = 0;
  while (i < 5) {
    print("Number $i");
    ++i;
  }

  // do while loop always executes atleast one iteration
  // because the condition is being evaluated only at the end
  // of the cycle
  var j = 0;
  do {
    print("Number $j");
    ++j;
  } while (j < 5);

  // if you want to alter the flow of loop you can use
  // break keyword. It immediately stops the loop in which
  // it is called.
  for (var k = 0; k <= 3; k++) {
    for (var jj = 0; jj < 5; jj++) {
      if (jj == 3) {
        print("break");
        break;
      }
    }
  }

  // There are some cases in which you want to completely
  //  traverse a string or a container and you
  // don’t care about the index.
  final List<String> fruits = ["Apple", "Mango", "Banana", "Strawberry"];

  for (var i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  // That’s perfectly fine but you’re using i just to retrieve
  // the element at the i-th position and nothing more.
  // There are no calculations based on the index as it’s
  // just used to traverse the list. In such cases you should
  // do the following:
  final List<String> alphabets = ["A", "B", "C", "D"];
  for (final alpha in alphabets) {
    print(alpha);
  }
}
