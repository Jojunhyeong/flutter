class Car{
  int seats;
  String color;
  
  Car(int sts, String clr){
    this.seats = sts;
    this.color = clr;
  }
  
}
main(){
  Car newCar = Car(4, 'red');
  
  print('seat: ${newCar.seats}, color: ${newCar.color}');
        }