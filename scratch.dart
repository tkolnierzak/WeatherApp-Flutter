void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String t = await task2();
  task3(t);
}

void task1() {
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 3);
  String result;
  await Future.delayed(duration, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  print('Task 3 complete $task2Data');
}
