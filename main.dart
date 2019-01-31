// void main() {
//   print("Hello, World");
// }

// void main() {
//   print("Hi");
//   print("From Dart!");
// }

// void main() {
//   var x = -10;

//   print(x.abs());
// }

// void main() {
// Numbers - (int, double) num
// Strings - "Hello!" (single and double quotes)
// Booleans - true or false
// Lists - collections of items (like arrays) List<int> 0 indexed
// runes - unicode character points
// symbols - #symbol (simbolic metadata)

//   int x = 10;
//   double y = 10.0;

//   String s = "${x + y}";
//   print(s);
//   bool b = true;
//   print(b);
//   List l = [1, 2, 3];
//   print(l[0]);
//   List<String> ls = ["1", "2", "3"];
//   print(ls[1]);

//   Map<String, int> map = {
//     'A': 10,
//     'B': 20,
//     'C': 30,
//   };

//   print(map["A"]);
// }

// int add(int a, int b) {
//   return a + b;
// }
// Type based function
// add(a, b) {
//   return a + b;
// }
// No types

// void main() {
//   print(add(1, 2));
//   print(add(20.0, 40.0));
//   print(add("a", "b"));
//   print(add(true, false));
// }

// int add(int a, int b) {
//   return a + b;
// }

// Function fun;

// void main() {
//   fun = add;

//   var result = fun(20, 30);

//   print("Result is $result");
// }

// int add(int a, int b) {
//   return a + b;
// }

// exec(Function op, x, y) {
//   return op(x, y);
// }

// void main() {
//   var result = exec(add, 20, 30);
//   print("Result is $result");
// }

// int add(int x, int y) => x + y;
// int sub(int x, int y) => x + y;

// choose(bool op) {
//   if (op == true) {
//     return add;
//   } else {
//     return sub;
//   }
// }

// void main() {
//   var result = choose(true)(10, 20);
//   print("Result is $result");
// }

// int add(int x, int y) => x + y;
// int sub(int x, int y) => x + y;

// List<Function> operators = [add, sub];

// void main() {
//   var result = operators[1](10, 20);
//   print("Result is $result");
// }

// calc(int b) {
//   int c = 1;

//   return () => print("The value is ${b + c++}");
// }

// void main() {
//   (a, b) {
//     print("Hello, from closure: ${a + b}");
//   }(20, 30.0);

//   var f = calc(10);
//   f();
//   calc(10)();
//   f();
//   f();
// }
