import 'dart:io';

void main() {
  print("Enter number of terms:");
  int n = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];
  print("Enter numbers:");
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  print("Numbers:$numbers");
  int largest = numbers[0];
  for (int i = 0; i < n; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  print("Largest number:$largest");
}
