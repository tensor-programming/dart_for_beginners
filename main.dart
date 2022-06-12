void main() {
  // const x = 10;
  var n1 = Complex(3, -2);
  var n2 = Complex(1, 4);
  var q = Quaternion(1, -2, 3);
  print(n1 + n2);
  print(n1.multiply(n2));
  print(Complex.subtract(n1, q));
  print(q + n2);
}

// u + vi
// 3 - 2i
// i^2 = -1

// (3 - 2i) * (1 + 4i) = 3 + -2i + 12i + 8 = 11 + 10i

class Complex {
  num _real;
  num _imaginary;

  // static const x = 10;
  // static num counter = 0;

  num get real => _real;
  set real(num value) => _real = value;

  num get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;

  Complex(this._real, this._imaginary);

  Complex.real(num real) : this(real, 0);

  Complex.imaginary(num imaginary) : this(0, imaginary);

  Complex operator +(Complex c) {
    return Complex(
      this.real + c.real,
      this.imaginary + c.imaginary,
    );
  }

// (3 - 2i) * (1 + 4i) = 3 + -2i + 12i + 8 = 11 + 10i
  Complex multiply(Complex c) {
    var first = this.real * c.real;
    var inner = this.imaginary * c.real;
    var outer = this.real * c.imaginary;
    var last = -(this.imaginary * c.imaginary);

    return Complex(first + last, inner + outer);
  }

  static Complex subtract(Complex c1, Complex c2) {
    return Complex(
      c1.real - c2.real,
      c1.imaginary - c2.imaginary,
    );
  }

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

// Quaternion
// u + vi + xj

// i = j = sqrt(-1)

class Quaternion extends Complex {
  num jImage;

  Quaternion(
    num real,
    num imaginary,
    this.jImage,
  ) : super(
          real,
          imaginary,
        );

  @override
  String toString() {
    if (this.jImage >= 0 && this._imaginary >= 0) {
      return '${this._real} + ${this.imaginary}i + ${this.jImage}j';
    } 
    if (this.jImage >= 0 && this._imaginary < 0) {
      return '${this._real} - ${this.imaginary.abs()}i + ${this.jImage.abs()}j';
    } 
    if (this.jImage < 0 && this._imaginary >= 0) {
      return '${this._real} + ${this.imaginary.abs()}i - ${this.jImage.abs()}';
    }
    return '${this._real} - ${this.imaginary.abs()}i - ${this.jImage.abs()}j';
}
