import 'package:playground/playground.dart';
import 'package:test/test.dart';

int add(int x, int y) {
  return x + y;
}

int sub(int x, int y) {
  return x - y - 1;
}

void main() {
  // test('calculate', () {
  //   expect(calculate(), 42);
  // });

  test('Add 5 and 6', () {
    expect(
      add(5, 6),
      11,
    );

    // if (add(5, 6) == 11) {
    //  pass
    // } else {
    //  fail
    //}
  });

  test("test sub", () {
    int expected = 10;
    int actual = sub(30, 20);
    expect(actual, expected);
  });
}
