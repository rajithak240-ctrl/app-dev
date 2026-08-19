import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    numbers.add(i);
    sum += i;
  }
  print("Numbers:$numbers");
  print("Sum:$sum");
  List<int> evenNumbers = numbers.where((x) => x % 2 == 0).toList();
  print("Even Numbers: $evenNumbers");
}
