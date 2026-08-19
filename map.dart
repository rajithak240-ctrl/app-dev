import 'dart:io';

void main() {
  print("Enter number of terms:");
  int n = int.parse(stdin.readLineSync()!);
  Map<int, int> squares = {};
  for (int i = 1; i <= n; i++) {
    squares[i] = i * i;
  }
  print("Number:Square");
  squares.forEach((key, value) {
    print("$key : $value");
  });
}
