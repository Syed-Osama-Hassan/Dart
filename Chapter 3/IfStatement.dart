void main() {
  final random = 13;

  // If remainder of random divide by 2 is
  // equal to zero, if will run otherwise,
  // else statement will run
  if (random % 2 == 0) {
    print("Got an even number");
  } else {
    print("Got an odd number");
  }

  // Short hand way of writing the above if else block
  print((random % 2 == 0) ? "Got an even number" : "Got an odd number");

  String? status;
  String isAlive = status ?? "RIP";
  print(isAlive);
}
