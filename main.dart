void main() {
  var c = Complex(5, 2);

  var c2 = Complex(2, 5);
  var r = Complex.real(10);
  var i = Complex.imaginary(-4);

  i.imaginary = 20;
  i.real = 50;

  print(i.real);
  print(i.imaginary);

  print(c == c2);
  print(c2);
  print(c);
  print(r);
  print(i);
}

class Complex {
  num _real;
  num _imaginary;

  get real => _real;
  set real(num value) => _real = value;

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;
  // num getReal() {
  //   return _real;
  // }
  // void setReal(num real) {
  //   this._real = real;
  // }
  // num getImaginary() {
  //   return _imaginary;
  // }
  // void setImaginary(num imaginary) {
  //   this._imaginary = imaginary;
  // }

  Complex(this._real, this._imaginary);

  Complex.real(num real) : this(real, 0);

  Complex.imaginary(num imaginary) : this(0, imaginary);

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this._real == other._real && this._imaginary == other._imaginary;
  }

  @override
  String toString() {
    if (this._imaginary >= 0) {
      return '${this._real} + ${this._imaginary}i';
    }
    return '${this._real} - ${this._imaginary.abs()}i';
  }
}

// num is a parent of int and double
// Object is the parent for all Objects in dart

// void main() {
//   var c = Complex();
//   c.imaginary = 2;
//   c.real = 5;

//   var c2 = Complex()
//     ..imaginary = 2
//     ..real = 5;

// var x = Complex();
// error
// print(x);

//   print(c == c2);

//   print(c2);

//   print(c);
// }

// Complex Numbers
// i^2 = -1
// 5 + 2i
// 10 + 0i
// 0 - 4i
// class Complex {
//   num real;
//   num imaginary;

//   @override
//   bool operator ==(other) {
//     if (!(other is Complex)) {
//       return false;
//     }
//     return this.real == other.real && this.imaginary == other.imaginary;
//   }

//   @override
//   String toString() {
//     if (imaginary >= 0) {
//       return '${real} + ${imaginary}i';
//     }
//     return '${real} - ${imaginary.abs()}i';
//   }
// }
