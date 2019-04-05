import 'package:playground/playground.dart';
import 'dart:isolate';

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
