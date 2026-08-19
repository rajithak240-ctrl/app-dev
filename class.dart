

class A {
  a() {
    print("A is Called");
  }
}

class B extends A {
  b() {
    print("B is Called");
  }
}

void main() {
  B obj = B();
  obj.a();
  obj.b();
}
