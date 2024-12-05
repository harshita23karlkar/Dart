// void main() async {
//   print("hello");
//   await Future.delayed(
//       Duration(seconds: 1),
//       () => {
//             print("hello 1"),
//             print("hello 2"),
//             print("hello 3"),
//           });

//   print("hello 4");
//   print("hello 5");
// }

// 2nd
// Future<void> myName() async {
//   Future<String>.delayed(Duration(seconds: 5), () => "harshita");
// }

// void main() async {
//   print(1);
//   var future = Future<int>.delayed(Duration(seconds: 2), () => 2);
//   future.then((value) => print(value));
//   print(3);
// }

Future<void> fetchData() async {
  print("Fetching data...");
  await Future.delayed(
    Duration(seconds: 2),
  );
  print("Data fetched!");
}

setFirebse() async {
  print("Fetching data...");

  await Future.delayed(Duration(seconds: 1), () {
    return 1;
  }).then((val) {
    print(val);
  });
  print("Data fetched!");
}

void main() async {
  print("Start");
  setFirebse().t;
  // fetchData();

  print("End");
}
