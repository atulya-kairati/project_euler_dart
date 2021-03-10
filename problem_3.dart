// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?
import "dart:math" as math;

void main (){
  Map<int, int> factors = {};
  var num = 600851475143;
  var i = 2;
  while (num > 1){
    while (num % i == 0){
      factors.update(i, (savedVal) => savedVal + 1, ifAbsent: () => 1);
      num ~/= i;
    }
    i++;
  }
  var primeFactors = factors.keys;
  var maxFactor = primeFactors.reduce(math.max);
  print(maxFactor);
}
