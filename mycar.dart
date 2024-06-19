class car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int countsOfCar = 0;

  car(
      {required this.brand,
      required this.model,
      required this.year,
      required this.milesDriven}) {
    car.countsOfCar++;
  }

  double drive(double miles) {
    return milesDriven += miles;
  }

  double getMilesDriven() {
    return this.milesDriven;
  }

  String getBrand() {
    return this.brand;
  }

  String getModel() {
    return this.model;
  }

  int getYear() {
    return this.year;
  }

  int getAge() {
   int currentYear = DateTime.now().year;
   return currentYear - this.year;
  }
}


void main() {
  car myCar1 = car(brand: 'Tesla', model: 'Model S', milesDriven: 650.00, year: 2012);
  car myCar2 = car(brand: 'BMW', model: 'GO7', milesDriven: 200.00, year: 2018);
  car myCar3 = car(brand: 'Ferrari', model: 'SF 90 Spider', milesDriven: 800.00, year: 2019);

  print('My Car 1:\n Brand is: ${myCar1.getBrand()}\n model is: ${myCar1.getModel()}\n Made on: ${myCar1.year} \n it\'s driven: ${myCar1.drive(500)} km\n it\'s age is: ${myCar1.getAge()} years');
  print('My Car 2:\n Brand is: ${myCar2.getBrand()}\n model is: ${myCar2.getModel()}\n Made on: ${myCar2.year} \n it\'s driven: ${myCar2.drive(700.5)} km\n it\'s age is: ${myCar2.getAge()} years');
  print('My Car 3:\n Brand is: ${myCar3.getBrand()}\n model is: ${myCar3.getModel()}\n Made on: ${myCar3.year} \n it\'s driven: ${myCar3.drive(1000.0)} km\n it\'s age: ${myCar3.getAge()} years\n');

  print('Total number of Cars: ${car.countsOfCar}');
}
