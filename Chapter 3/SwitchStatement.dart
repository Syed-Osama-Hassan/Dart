enum Status { Ready, Paused, Terminated }

void main() {
  final status = Status.Terminated;

  // When you have a series of cases to take into account,
  // instead of using a long chain of if-elses you
  // should go for the switch statement.
  // If none of the previous cases matches, default block
  // will execute.
  switch (status) {
    case Status.Ready:
      print("Ready");
      break;
    case Status.Paused:
      print("Paused");
      break;
    case Status.Terminated:
      print("Terminated");
      break;
    default:
      print("Status is unknown");
  }
}
