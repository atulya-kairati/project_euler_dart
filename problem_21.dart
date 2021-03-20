// Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
// If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

// For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

// Evaluate the sum of all the amicable numbers under 10000.
import "dart:math" as math;

int getSum(List<int> numbers){
  // calculates sum by excluding last element
  if (numbers.length <= 2)
    return numbers.first;
  numbers.removeAt(numbers.length -1);
  return numbers.reduce(
    (value, element) => value + element,
  );
}

Map<int, int> getPrimeFactors(int number){
  Map<int, int> factors = {};
  var div = 2;
  while (number > 1){
    while (number % div == 0){
      factors.update(
        div,
        (prevVal) => ++prevVal,
        ifAbsent: () => 1,
      );
      number ~/= div;
    }
    div++;
  }
  return factors;
}

List<List<int>> getHelperArray(Map<int, int> primeFactors){
  List<List<int>> arr = [];
  primeFactors.forEach((factor, exponent){
    List<int> temp = [];
    for (int i = 0; i <= exponent; i++){
      temp.add(math.pow(factor, i).toInt());
    }
    arr.add(temp);
  });
  return arr; 
}

List<int> getCombination(List<int> list1, List<int> list2){
  List<int> temp = [];
  for (var i in list1){
    for (var j in list2){
      temp.add(i*j);
    }
  }
  return temp;
}

List<int> getDivisors(int number){
  var pfs = getPrimeFactors(number);
  var arr = getHelperArray(pfs);
  var accumulator = arr.first;
  for (var i = 1, len = arr.length; i < len; ++i) {
    accumulator = getCombination(arr[i], accumulator);
  }
  return accumulator;
}

void main() {
  var limit = 20;
  var sumofAmicable = 0;
  List<int> amicableNumbers = [];
  // for (int i = 10; i <= limit; i++){
  //   var temp = getSum(getDivisors(i));
  //   print(temp);
  //   var n = getSum(getDivisors(temp));
  //   print(n);
    
  //   // if(i == n){
  //   //   amicableNumbers.add(i);
  //   //   print(i);
  //   // }
  // }
  print(amicableNumbers);
  print(getPrimeFactors(1)); // error
}