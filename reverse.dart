import 'dart:io';

void main() {
  print("Enter number of terms:");
  int n = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];

  for (int i = 1; i <= n; i++) {
    numbers.add(i);
  }
  print("Numbers:$numbers");
  print("Reverse order:");
  for (int i = numbers.length - 1; i >= 0; i--) {
    print(numbers[i]);
  }
}
