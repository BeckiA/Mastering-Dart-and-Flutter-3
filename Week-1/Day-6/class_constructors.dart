class Person {
// Instance Variables
// Initalization is neede when you do work with named constructors
// Or try to use the 'late' key word
  late String name;
  late int age;

// 1. Parameterized Constructors
  Person(this.name, this.age);

// 2. Named Constructors(Custom Constructors)
// Help us to construct from any Object

  Person.fromMap(Map myMap) {
    name = myMap['name'];
    age = myMap['age'];
  }

// Most of the time named constructors from List is not recommended
// Since they results in indexing mismatch
  Person.fromList(List myList) {
    name = myList[0];
    age = myList[1];
  }
}

void main(List<String> args) {
// 1. Passing Values to the Parameterized Constructor
  // Make it more easier to assign values to the instance variables
  var person = Person("Abebe", 30);
  print(person.name);
  print(person.age);
// 2. Passing values to the named constructors
  // Step-1: Construct the Map
  Map mySetupMap = {'name': 'Bereket', 'age': 23};

  // Step-2: Instantiating the class with the person Object
  Person person1 = Person.fromMap(mySetupMap);
  print(person1.name);
  print(person1.age);

  // Example-2: Instantiating from List
  List mySetupList = ['Yeabsra', 18];
  Person person2 = Person.fromList(mySetupList);
  print(person2.name);
  print(person2.age);
}
