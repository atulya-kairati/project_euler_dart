
factorial(i) => (i == 1) ? 1 : i * factorial(i - 1);

void main() {
  var f = 1;
  // for (var i = 1; i <= 100; ++i) {
  //   f *= i;
  //   print(f);
  // }
  print(factorial(10));
}