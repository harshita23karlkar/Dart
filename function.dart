// Required Positional Parameters
int add(int a, int b) {
  return a + b;
}

// return value
String greet(name) => "Hello i am $name";

// retuen diff type
String concateStr(int num) => "Hello $num";

// Pass value to the function
void intro(String name, int age, String addr) {
  print("hello I am $name and i am $age year old and i am from $addr");
}

// void functionName({type param1, type param2}) { ... }   named parameter
void intro2({String? name, int? age, String? addr}) {
  print("hello I am $name and i am $age year old and i am from $addr");
}

//  requierd named
void greet2({required String name, required greeting}) {
  print("Hello $name $greeting");
}

// optional positional parameter
void sayHello(String name, [String? greet]) {
  print("Hello $name ${greet ?? 'good morning !'}");
}

// default parameter value
void sayHello2({String name = "dear", String greet = "good morning"}) {
  print("Hello $name $greet");
}

// passing function as a parameter
void printHi(String greet) {
  print("function as parameter $greet");
}

void usePrintHi(String name, say) {
  var greetings = "hello $name";
  say(greetings);
}

// Anonymous Functions with Parameters
void anonymousfunc(action()) {
  action();
}

void main(List arr, String? name) {
  print(add(5, 3));
  print(greet("Harshita"));
  print(concateStr(23));
  intro("harshita", 20, "indore");
  intro2(name: "harshita", age: 20, addr: "indore");
  greet2(name: "harshita", greeting: "good morning");
  sayHello("harshita"); //only first arg is requierd and second is optional
  sayHello2(name: "harshita");
  usePrintHi("harshita", printHi);
  anonymousfunc(() {
    print("hello from anonymous function");

    // String doubts
    String a = 'hello';
    String b = 'hello';
    print(identical(a, b));

    StringBuffer a1 = StringBuffer();
    StringBuffer b1 = StringBuffer();
    StringBuffer c1 = StringBuffer();
    a1.write("hello");
    print(identical(a1, b));
    b1.write("hello");
    print(identical(a1, b1));
    print(a1);
    c1.write(a1);
    print(identical(a1, c1));
  });
}

