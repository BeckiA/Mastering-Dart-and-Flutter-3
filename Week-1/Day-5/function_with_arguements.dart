void main(List<String> args) {
  print("Good Morning, Becki");

  // #1
  var result = myFunction(1, 2);
  print('Result: $result');

  // #2
  String callingName = nameGenerator("George", 'Washington');
  print(callingName);

  // #3
  var printName = callName(firstName: 'Bereket', lastName: 'Abera');
  print(printName);

  // #4
  String salute = salutePresident(firstName: "George", lastName: 'Washington');
  print(salute);

  // #5 Case 1: If the user forgets to pass both arguements
  String greet = greetPresident();
  print(greet);

  // Case 2: Setting default values to the first name but not to the last name
  String greetings = greetPresident(firstName: "Abebe");
  print(greetings);
}

// 1. Positional Arguements
myFunction(num1, num2) {
  return num1 * num2;
}

// 2. Making Positional Arguements More Safe
String nameGenerator(String firstName, String lastName) {
  return 'Hello Mr.$firstName $lastName';
}

// 3. Named Arguements
callName({firstName, lastName}) {
  return '$firstName $lastName';
}

// 4.  Making Named Arguements More Safe
String salutePresident({required String firstName, required String lastName}) {
  return "Hello Mr.$firstName $lastName";
}

// 5. Setting default values to the arguements
String greetPresident(
    {String firstName = 'FIRST NAME', String lastName = 'LAST NAME'}) {
  return "Hello Mr.$firstName $lastName";
}
