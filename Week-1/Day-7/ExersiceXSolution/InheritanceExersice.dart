class Car {
  String brand;
  String model;
  int year;
  Car(this.brand, this.model, this.year);
}

// TODO: 2. Create a class named 'ElectricCar' that inherits from the 'Car' class.
// Add the following properties to the 'ElectricCar' class:
// - batteryCapacity (double)
// - range (double)
// Add a constructor to initialize these properties along with the properties from the 'Car' class.
// HINT: https://dart.dev/language#inheritance
class ElectricCar extends Car {
  double batteryCapacity;
  double range;
  ElectricCar(
      super.brand, super.model, super.year, this.batteryCapacity, this.range);
}

// TODO: 3. Create instances of the 'ElectricCar' classes and print their properties.
void main(List<String> args) {
  ElectricCar electricCar = ElectricCar("Hyundai", 'Tuxon', 2022, 1000.0, 7.0);
  print(electricCar.brand);
  print(electricCar.model);
  print(electricCar.year);
  print(electricCar.batteryCapacity);
  print(electricCar.range);
}
