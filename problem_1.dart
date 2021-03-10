
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

void main(){
  final allNums = List<int>.generate(1000 - 1, (int index) => ++index);
  
  final filteredNums = allNums.where((int element) => element % 3 == 0 || element % 5 == 0);
  
  final sum = filteredNums.reduce((value, element) => value + element);
  
  print(sum);
}