import 'dart:math' as Math;

void main() {
  var numbers = Iterable.generate(1000, (i) => i);

  print(numbers.reduce(Math.min));
  print(numbers.reduce(Math.max));

  Map<int, int> map = Map.fromIterable(
    numbers.take(10),
  );
  var newMap = map.map(
    (int k, int v) => MapEntry(k, k + v),
  );

  print(newMap[0]);
  print(newMap[9]);

  // numbers.reduce();
  // numbers.map();
  // numbers.where();

  // var sum = 0;
  // for (var x in numbers) {
  //   sum += x;
  //   // sum = sum + x;
  // }
  // print(sum);

  // print(numbers.reduce((prev, i) => prev + i));

  // print(
  //   numbers.take(10).map((n) => n * 2).toList(),
  // );

  // print(numbers.any((n) => n % 2 == 0));

  // print(numbers.every((n) => n % 2 == 0));

  // print(
  //   numbers.where((n) => n % 2 == 0).toList(),
  // );

  // print(numbers.take(10).toList());

  // print(
  //   numbers
  //       .takeWhile(
  //         (n) => n < 10,
  //       )
  //       .toList(),
  // );

  // print(numbers.first);
  // print(numbers.last);

  // print(numbers.skip(4).toList());

  // numbers.forEach(
  //   (n) => print(n),
  // );

  // for (var n in numbers) {
  //   print(n);
  // }
  // var list = numbers.toList();
  // var s = numbers.toSet();
  // var str = numbers.toString();

  // print(list);
  // print(s);
  // print(str);
}

// void main() {
//   List<int> x = [1, 2, 3, 4];

//   print(x[0]);

//   for (int i in x) {
//     print(i);
//   }

//   for (int i = 0; i < x.length; i++) {
//     print(x[i]);
//   }
// }
