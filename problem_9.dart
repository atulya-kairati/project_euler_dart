// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

// a^2 + b^2 = c^2
// For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

// There exists exactly one Pythagorean triplet for which  a + b + c = 1000.
// Find the product abc.


// -------------------------------------------------

getTriplets(){
  var limit = 1000;
  for(int c = 5; c <= limit; c++)
    for(int b = 1; b < c; b++){
      var a = limit - b - c;
      if (a*a + b*b == c*c)
        return [a, b, c];
    }
}

void main() {
  List<int> triplets = getTriplets();
  int mult = triplets.reduce(
      (value, element) => value * element
    );
  print(mult);
}
