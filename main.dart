// import 'dart:io';

// void main() {
//   PrintItems<int> printItemsInt = PrintItems(10, 50, Status.stopped);
//   printItemsInt.prints();

//   PrintItems<String> printItemsString =
//       PrintItems(20, "Hi there!", Status.running);
//   printItemsString.prints();

//   PrintItems<PrintItems> printItems =
//       PrintItems(2, printItemsInt, Status.stopped);
//   printItems.prints();
// }

// class PrintItems<T> {
//   int times;
//   T printedItem;
//   Status status;

//   PrintItems(this.times, this.printedItem, this.status);

//   void prints() {
//     if (status.index == 1) {
//       for (int i = 0; i < times; i++) {
//         print(printedItem);
//       }
//     } else {
//       print("Item Stopped: ${status} ${status.index}");
//     }
//   }
// }

// enum Status {
//   stopped,
//   running,
// }

// void main() {
//   int index;
//   List<String> names = ["John", "Jackie", "Jerry", "Sarah"];
//   String input;

//   print("Enter an index: ");
//   input = stdin.readLineSync();
//   try {
//     index = int.parse(input);
//     print(names[index]);
//   } on FormatException {
//     print("Could not parse the input!");
//   } on RangeError {
//     print("int out of range of index");
//   } finally {
//     print("You selected $index out of ${names.length}");
//   }

// }

// class AgeException implements Exception {
//   String message;
//   AgeException(this.message);

//   @override
//   String toString() {
//     return message;
//   }
// }

// class BannedPerson implements Exception {
//   @override
//   String toString() {
//     return "That person was banned from the Bar!";
//   }
// }

// class Person {
//   String name;
//   int age;
//   Person(this.name, this.age);
//   @override
//   String toString() {
//     return name;
//   }
// }

// class Pub {
//   List<Person> patrons = List();

//   void checkAge(Person p) {
//     if (p.age < 18) {
//       throw AgeException("User is under age!");
//     }
//     if (p.name == "Jacky") {
//       throw BannedPerson();
//     } else {
//       patrons.add(p);
//     }
//   }
// }

// void main() {
//   Pub checkPerson = Pub();

//   try {
//     checkPerson.checkAge(Person("Jimmy", 40));
//     checkPerson.checkAge(Person("Jacky", 23));
//     checkPerson.checkAge(Person("Jonny", 12));
//   } catch (e) {
//     print(e);
//   }

//   print(checkPerson.patrons);
// }

// class Animal {
//   String type;

//   factory Animal(String type) {
//     if (type == "cat") {
//       return Cat(type);
//     } else if (type == "dog") {
//       return Dog(type);
//     } else {
//       throw AnimalException(type);
//     }
//   }

//   Animal._type(this.type);
// }

// class AnimalException implements Exception {
//   AnimalException(this.type);

//   String type;
//   @override
//   String toString() {
//     return "$type is not a valid type";
//   }
// }

// class Cat extends Animal {
//   Cat(String type) : super._type(type);

//   @override
//   String toString() {
//     return type;
//   }
// }

// class Dog extends Animal {
//   Dog(String type) : super._type(type);

//   @override
//   String toString() {
//     return type;
//   }
// }

// class Item {
//   static Item item;
//   String state;

//   factory Item(String state) {
//     if (Item.item == null) {
//       Item.item = Item._internal()..state = state;
//     }
//     return Item.item..state = state;
//   }

//   Item._internal();
// }

// void main() {
//   try {
//     Animal a = Animal("dog");
//     print(a);
//   } catch (e) {
//     print(e);
//   }

//   Item item = Item("Some State");
//   print(item.state);
//   Item item2 = Item("Some other State");
//   Item item3 = Item("different state");

//   print(item.state);
//   print(item2.state);
//   print(item3.state);
// }
