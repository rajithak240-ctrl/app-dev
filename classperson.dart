class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Student extends Person {
  String course;
  Student(String name, int age, this.course) : super(name, age);

  void displayStudent() {
    displayInfo();
    print("Course: $course");
  }
}

void main(){
  Student s1=Student("Abhay",25,"IT");
  s1.displayStudent();
}
