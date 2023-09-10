void main() {
  var myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //TASK ONE:
  // Use a for loop with iterable iteration
  // to print out the numbers in myList
  for (var number in myList) {
    // print(number);
  }

  //TASK TWO:
  // Use a for loop with incrementation i++
  // to print out the numbers in myList
  for (var i = 0; i <= myList.length; i++) {
    // print(i);
  }
  //TASK THREE:
  // Use any for loop type to print out
  // only the EVEN numbers in this list
  // HINT: Modulo Operator in Dart is %
  // https://dart.dev/language/operators#arithmetic-operators
  // You will need if statement to check

  for (final evenNumbers in myList) {
    if (evenNumbers % 2 == 0) {
      print(evenNumbers);
    }
  }
}
