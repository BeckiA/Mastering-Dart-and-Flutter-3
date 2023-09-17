void main(List<String> args) {
  // 1. The Null Coallesiecing Operator
  // It'll return the value found in either the right or the left after checking
  // Of a condition
  // ("abc"??"def") based on the value which is not null
  String? name;
  String otherName = "Becki";
  // print(name ?? otherName); // Will return Becki
  String thirdName = 'Elijah';
  // print(thirdName ??
  //     otherName); // Will return Elijah It also Warns like: The left operand can't be null, so the right operand is never executed.

  // 2. The Null Assignment Operator
  // We'll use ?? operator with assignment
  // Help us once we assigned it it'll prevent us from further assignation
  String? firstName;
  firstName ??= 'Abebe';
  // print(firstName);
  firstName ??=
      'Almaz'; // Will warn us like: The left operand can't be null, so the right operand is never executed.
  // print(firstName);

  // 3. The Null Aware Access Operator
  // Allow us to access the method of that value which may results in null
  String? salute;
  // print(salute?.toLowerCase()); // Will say dead code and will output null
  salute ??= "Good Morning";
  // print(salute?.toLowerCase()); // will output good morning

  // 4.The null saftey Operator
  // Unsafe Practice be aware while using it
  String? gratitude;
  gratitude = 'hello world';
  print(gratitude!.length);
}
