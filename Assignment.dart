class Car{
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;

  //constructor
  Car(this.brand,this.model,this.year,this.milesDriven){
    numberOfCars++;
  }

  //method
  void drive(double miles){
    milesDriven += miles;
  }
  double getMilesDriven(){
    return milesDriven;
  }
  String getBrand(){
    return brand;
  }
  String getModel(){
    return model;
  }
  int getYear(){
    return year;
  }
  int getAge(){
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }

}
  void main(){

  Car car1 = Car('Honda','CR-V', 1997, 150000.0);
  Car car2 = Car('Tesla', 'Model 3', 2016, 30000.0);
  Car car3 = Car( 'Porsche', 'M911', 1963, 1000.0);

  car1.drive(100.0);
  car2.drive(200.0);
  car3.drive(300.0);

  print("Car 1:");
  print("Brand: ${car1.getBrand()}");
  print("Model: ${car1.getModel()}");
  print("Year: ${car1.getYear()}");
  print("Miles Driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge()} years");

  print("\nCar 2:");
  print("Brand: ${car2.getBrand()}");
  print("Model: ${car2.getModel()}");
  print("Year: ${car2.getYear()}");
  print("Miles Driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge()} years");

  print("\nCar 3:");
  print("Brand: ${car3.getBrand()}");
  print("Model: ${car3.getModel()}");
  print("Year: ${car3.getYear()}");
  print("Miles Driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge()} years");

  print('\nTotal number of cars created: ${Car.numberOfCars}');
}