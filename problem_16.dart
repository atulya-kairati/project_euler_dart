// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

// What is the sum of the digits of the number 2^1000?
import "dart:math" show pow;

void main() {
  BigInt two = BigInt.two;
  BigInt ten = BigInt.from(10);
  int thousand = 1000;
  BigInt bigNumber = two.pow(thousand);
  BigInt rem;
  BigInt  digitSum = BigInt.zero; 
  while(bigNumber > BigInt.zero){
    rem = bigNumber % ten;
    digitSum += rem; 
    bigNumber ~/= ten;
  }
  print(digitSum);
}