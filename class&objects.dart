class A {
  late int x, y;
  A() {
    print("object created");
  }
  A.origin(int x, int y) {
    this.x = x;
    this.y = y;
  }
  void getValue() {
    print("$x  $y");
  }

  void sayHello(String name) {
    print("Hello $name");
  }
}

void main() {
  A a = A()
    ..x = 12
    ..y = 45;
  a.sayHello("harshita");
  print(a);
  print(a.toString());
  print(a is A);
  A obj = A();
}
