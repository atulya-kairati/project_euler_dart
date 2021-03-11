/*
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# -----------------------------------------------------
# Algorithm working
# save the prime factors of the limit then
# see if all the prime factor of limit-1 exist in 
# saved factors or not if not save the required 
# factors so that all the factors of limit - 1 exist 
# but not more, continue this to 1
# take product of all saved factors
*/

import "dart:math" as math;

Map<int, int> genPrimeFactors(int number){
  Map<int, int> factors = {}; // {factor: exponent}
  var div = 2;
  while (number > 1){
    while(number % div == 0){
      factors.update(
          div,
          (previousVal) => ++previousVal,
          ifAbsent: () => 1,
        );
      number ~/= div;
    }
    div++;
  }
  return factors;
}

void main() {
  Map<int, int> multiples = {};
  var limit = 20;
  for (int i = limit; i >= 1; i--){
    var pfactorsOfi = genPrimeFactors(i);
    pfactorsOfi.forEach((factor, exponent){
        multiples.update(
          factor,
          (previousVal) {
            if (exponent > previousVal) 
              return exponent;
            return previousVal;
          },
          ifAbsent: () => exponent,
        );
    });
  }
  num result = 1; 
  multiples.forEach((factor, expo) => result *= math.pow(factor, expo));
  print (result);
}