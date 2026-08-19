import 'dart:io';

class Rectangle {
  int length;
  int breadth;

  Rectangle(this.length, this.breadth);

  int area() {
    return length * breadth;
  }

  int perimeter() {
    return 2 * (length + breadth);
  }
}

void main() {
  print("Enter length: ");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter breadth: ");
  int m = int.parse(stdin.readLineSync()!);
  Rectangle rect1 = Rectangle(n, m);
  print("Length:${rect1.length}");
  print("Breadth:${rect1.breadth}");
  print("Area:${rect1.area()}");
  print("Perimeter:${rect1.perimeter()}");
}
