
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
import "dart:math" as math;

void main() {
  int n = 100;
  var sumOfnSquare = (n * (n + 1) * (2*n + 1))/6;
  var squareOfsumOfn = math.pow ((n*(n + 1))/2, 2);
  print (squareOfsumOfn - sumOfnSquare);
}
