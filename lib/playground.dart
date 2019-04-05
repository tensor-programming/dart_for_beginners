import 'dart:isolate';

void calculatePI(SendPort sPort) {
  int iters = 10000000000;
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
