import 'dart:io';

void main() {
  try {
    print("Enter numerator: ");
    int n = int.parse(stdin.readLineSync()!);
    print("Enter denominator: ");
    int m = int.parse(stdin.readLineSync()!);
    int result = n ~/ m;
    print("Result : $result");
  } catch (e) {
    print("An error occurred: $e"); // Handles any type of error
  } finally {
    print("End of the program");
  }
}
