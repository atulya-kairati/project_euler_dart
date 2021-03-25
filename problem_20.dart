
factorial(i) => (i == 1) ? 1 : i * factorial(i - 1);

BigInt bigFactorial(int number){
  BigInt bf = BigInt.one;
  for(int i = 1; i <= number; i++){
    bf *= BigInt.from(i);
  }
  return bf; 
}

int sumBigNumDigit(BigInt bigNum){
  int s = 0;
  for(var sdigit in bigNum.toString().split('')){
    s += int.parse(sdigit);
  }
  return s; 
}

void main() {
  print(sumBigNumDigit(bigFactorial(100)));
}