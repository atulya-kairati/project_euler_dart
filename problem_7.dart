// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

bool isPrime(int n){
  if(n < 2) return false;
  else if(n == 2) return true;
  else if(n % 2 == 0) return false;
  else{
    for (var i = 3; i < n; i += 2)
      if (n % i == 0)
        return false;
  }
  return true;
}

Stream<int> primeStream() async* {
  var i = 2;
  while (true) {
    if(isPrime(i))
      yield i;
    i++;
  }
}

void main() async {
  var counter = 0;
  var index = 10001;
  await for(var prime in primeStream()){
    counter++;
    print('$counter: $prime');
    if(index == counter){
      print('Prime at $index: $prime');
      break;
    }
  }
}