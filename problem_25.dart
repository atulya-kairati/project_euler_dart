// The 12th term,144 is the first term to contain three digits.

// What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

// since we are dealing with big numbers, use BigInt

Stream<BigInt> fibStream() async* {
  BigInt a = BigInt.zero, b = BigInt.one;
  yield a;
  while(true){
    yield b;
    BigInt c = b;
    b = a + b;
    a = c; 
  }
}

int getNoOfDigits(BigInt number){
  int c = 0;
  BigInt ten = BigInt.from(10);
  while(number > BigInt.zero){
    c++;
    number ~/= ten;
  }
  return c; 
}

void main() async {
  var index = 0;
    
  await for(var bigFib in fibStream()){
    var len = getNoOfDigits(bigFib);
    if(len >= 1000){
      print(index);
      break; 
    }
    index++;
  }
}