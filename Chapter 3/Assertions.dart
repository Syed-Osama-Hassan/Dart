void main() {
  // you can use assertions to throw an exception
  final name = "";

  // if length > 0 is false --> runtime exception
  assert(name.length > 0, "Name cannot be empty");
// In release mode, every assert is ignored by the compiler and
// you’re guaranteed that they won’t interfere with the
// execution flow. Assertions work only in debug mode.
// When you hit Run on Android Studio or VS Code your Flutter
// app is compiled in debug mode so assertions are enabled.
}
