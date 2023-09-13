import 'dart:ffi';

class Animal {
  void eat() {
    print("Animal is Eating");
  }
}

// 1. Working on class inheritance
// Class inheritance basically uses the extends keyword
// Dog is a subclass of species Animal
class Dog extends Animal {
  void bark() {
    print("Dog is barking");
    // Using the super keyword!
    // It says just see the parent class and implment the original method
    // Don't see the overrided
    super.eat();
  }

  // 2. Working on overriding the method found in Animal class
  // Help us to customize the method(eat) to met our look and feel
  @override
  void eat() {
    // You must have to specify the same method name as of the method found in Animal class
    print("Dog is eating, YaY! I do override the method found in Animal");
  }
}

void main(List<String> args) {
  Animal animal = Animal();
  animal.eat();
  Dog dog = Dog();
  dog.bark();
  dog.eat(); //Now the instance dog can access the method found in the Animal class using the dog.eat() method
}
