bool isEven(int x){
  if(x%2==0){
    return true;
  }else {
    return false;
  }
}

List<int> getEvenNumbers(Iterable<int> numbers){
  var evenNumbers = <int>[];
  
  for(var i in numbers) {
    if (isEven(i)) evenNumbers.add(i);
  }
  return evenNumbers;
}

main(){
  var numbers = List.generate(10, (i) => i);
  print(getEvenNumbers(numbers));
}