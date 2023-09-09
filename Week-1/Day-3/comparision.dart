void main(List<String> args) {
  var textOne = "Hello";
  var textTwo = "World";

  // 1. The Assert function
  print(textOne);
  assert(1 == 1); //Assertion Error if condition is not met
  print(textTwo);

  // 2. The is Keyword
  var number = 1;
  // print(number.runtimeType);

  print(number is String);
}
