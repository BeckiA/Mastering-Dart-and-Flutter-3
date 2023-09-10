// Write a Dart program that prints the
//  first 10 positive even numbers using a while loop.

void main(List<String> args) {
  var numLength = 1;
  while (numLength <= 20) {
    if (numLength % 2 == 0) {
      var evenNumbers = numLength;
      print(evenNumbers);
    }
    numLength++;
  }
}
