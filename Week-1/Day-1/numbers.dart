// Numbers in Dart

void main(List<String> args) {
  // 1. int and double data types
  int numberOne = 13;
  double numberTwo = 12.1;

  print(numberOne);
  print(numberTwo);

  // 2. Working with exponents
  var expNum = 1.2e3;
  print(expNum);

  // 3. Practicing on type identfication
  var stringNum = "14.7";
  print(stringNum);
  print(stringNum
      .runtimeType); //runtimeType is used to identify the type of variable which is being assigned

  // 4. Type conversions using parse
  var convertedNum = double.parse(stringNum);
  print(convertedNum.runtimeType);
  print(convertedNum);
}
