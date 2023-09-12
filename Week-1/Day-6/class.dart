class Person {
  // Instance Variables (Properties) of a class
  String name = 'default';
  int age = 0;

  // Methods(behaviors) of a class
  // Functions inside a class
  // Act on the class object or perform some action using class attributes

  void introduce() {
    print("Hi my name is $name and I'm $age years old.");
  }
}

void main(List<String> args) {
  Person person1 = Person();
  print(person1.name);
  print(person1.age);

  // Overriding the attribute values
  person1.name = "Abebe";
  person1.age = 23;
  print(person1.name);
  print(person1.age);

  // Calling the behavior/method of a class
  person1.introduce();
}
