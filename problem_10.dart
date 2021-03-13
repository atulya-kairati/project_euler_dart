import "dart:math" show sqrt;


bool checkPrimality(int number){
  if (number == 2) return true;
  if (number % 2 == 0) return false;
  for(var i = 3; i <= sqrt(number).round(); i += 2)
    if (number % i == 0)
      return false;
  print(number);
  return true;
}

int sumOfPrimes(int limit){
  var sum = 2; // since 2 is prime
  for (var i = 3; i <= limit; i += 2)
    if (checkPrimality(i))
      sum += i;
  return sum;
}
void main() {
  print(sumOfPrimes(2000000));
}