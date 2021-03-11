// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.
import "dart:math" as math;
import "dart:io";


bool isPalindrome(int number){
  var numStr = number.toString();
  if (numStr == numStr.split('').reversed.join())
    return true;
  return false;
}

Stream<int> palindrome_stream() async* {
  var maxLimit = 999*999;
  var minLimit = 100*100;
  
  for (var i = maxLimit; i > minLimit; i--){
    if (isPalindrome(i))
      yield i; 
  }
}

void main () async {
  var palStream = palindrome_stream();
  // palStream.forEach(print);
  
  await for(var i in palStream){
    for (var j = 100; j <= math.sqrt(i); j++)
      if (i % j == 0 && (i~/j).toString().length == 3){
        print(i);
        exit(0);
      }
      
  }
}