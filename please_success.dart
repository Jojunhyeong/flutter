int timesTwo(int x) {
  return x * 2;
}

int timesFour(int x) {
  return timesTwo(timesTwo(x));
}

int runTwqice(int x, Function f) {
  x=f(x); //timesTwo(x);
  x=f(x); //timesTwo(x);
  return x;
}

main(){
  print("4 times two is ${timesTwo(4)}");