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
  int even = 0;
  int odd = 0;
  for (int i = 0; i < n; i++) {
    if (numbers[i] % 2 == 0) {
      even++;
    } else
      odd++;
  }
  print("Even numbers:$even");
  print("Odd numbers:$odd");
}
