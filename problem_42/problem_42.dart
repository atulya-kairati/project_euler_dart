// The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1);
// so the first ten triangle numbers are:

// 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

// By converting each letter in a word to a number corresponding to its
// alphabetical position and adding these values we form a word value. For
// example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word
// value is a triangle number then we shall call the word a triangle word.

// Using words.txt, a 16K text file containing nearly two-thousand common
// English words, how many are triangle words?

import 'dart:math' as math;
import 'dart:io';
import 'dart:convert' show jsonDecode;

bool checkTrangularity(int number) {
  var index = math.sqrt(number * 2).floor();
  if (number == (index * (index + 1)) / 2) return true;
  return false;
}

int getAlphabetSum(String word) {
  return word.runes.reduce((value, element) => value + element) -
      64 * word.length;
}

jsonifyFile(String path) {
  File file = File(path);
  var content = file.readAsStringSync();
  return jsonDecode('[$content]');
}

main(List<String> args) {
  var counter = 0;
  for (String word in jsonifyFile('words.txt')) {
    var alphaSum = getAlphabetSum(word);
    if (checkTrangularity(alphaSum)) counter++;
  }
  print(counter);
}
