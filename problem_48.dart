// The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

// Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

BigInt sumOfPowSeq(int ilimit){
  BigInt sum = BigInt.zero;
  for(var i = 1; i <= ilimit; i++){
    sum += BigInt.from(i).pow(i);
  }
  return sum; 
}

void main() {
  var d = 10000000000;
  print(sumOfPowSeq(1000) % BigInt.from(d));
}