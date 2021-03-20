// Collatz Sequence

int collatzSequenceLen(int number){
  var c = 1;
  while (number > 1){
    if (number % 2 == 0)
      number ~/= 2;
    else
      number = 3*number + 1;
    c++;
  }
  return c; 
}

void main() {
  var maxSeqLen = 0;
  var maxSeqNum = 2;
  
  var limit = 1000000;
  
  for (var i = 2; i <= limit; i++){
    var seqLen = collatzSequenceLen(i);
    if(seqLen > maxSeqLen){
      print(seqLen);
      maxSeqLen = seqLen;
      maxSeqNum = i;
    }
  }
  print(maxSeqNum);
}