import 'dart:isolate';
import 'dart:async';
import 'dart:io';

void main() {
  ReceivePort rPort = ReceivePort();
  rPort.listen((data) {
    if (data is String) {
      print(data);
    } else {
      print("Pi is $data");
      rPort.close();
    }
  });

  Isolate.spawn(calculatePI, rPort.sendPort);
}

void calculatePI(SendPort sPort) {
  int iters = 1000000000;
  double s = 1.0;
  double den = 3.0;
  double neg = -1.0;

  for (int i = 0; i < iters; i++) {
    s += (neg * (1 / den));
    den += 2.0;
    neg *= -1.0;
    if (i / iters == 0.25 || i / iters == 0.50 || i / iters == 0.75) {
      sPort.send("${(i / iters * 100)}% Complete");
    }
  }

  double pi = 4 * s;

  sPort.send(pi);
}

// void main() async {
//   String f = await File("text.txt").readAsString();
//   print(f);

// }

// void main() async {
//   print("program start");

//   print(await future());
//   print(await event1());
//   print(await event2());
//   print("program end");
// }

// Future<String> future() async {
//   Completer<String> completer = Completer();

//   Future.delayed(Duration(seconds: 2), () {
//     completer.complete("delayed call");
//   });

//   return completer.future;
// }

// Future<String> event1() async {
//   return Future.value("This is a future event");
// }

// Future<String> event2() async {
//   return Future.value("This is another future event");
// }
