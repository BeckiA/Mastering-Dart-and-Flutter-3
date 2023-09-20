void main() {
  // TRY ---> CATCH ---> ON ---> FINALLY

  // Example-1: Trying to divide a number with 0'

  // print(7 ~/ 2); // this will return only 3 but
  // print(7 ~/ 0); // This will return IntegerDivisionByZeroException error
  // try {
  //   print(7 ~/ 0);
  // } catch (error) {
  //   print('Ouch We Get This Error ${error}');
  // }

  // Example-2: Using the on condition for specific and Known Exceptions
  // for this example we will use  range Error Exception

  var myList = [1, 2, 3, 4];
  // print(myList[10]); // This will return RangeError as exception
  // try {
  //   print(myList[10]);
  // } on RangeError {
  //   print('Uh Oh!: The range is out of bound');
  // } catch (e) {
  //   print(
  //       'We found another exception which is not related to rang error the exception is: $e');
  // }

  // Example-4: Using the finally block to tell the user we have reached the end of our exception block
  // try {
  //   print(7 ~/ 0);
  // } catch (error) {
  //   print('Ouch We Get This Error ${error}');
  // } finally {
  //   print('We have reached the end of our exception');
  // }

  // Example-5: Using assertion to deal with comparision checking
  // Assertions are like if else statement but with pleasing syntax
  String savedPassword = '1234Becki';
  String attemptPassword = 'Becki1234';
  print('Before Assertion Trial');
  assert(attemptPassword == savedPassword,
      "ERROR"); // Failed assertion: line 41 pos 10: 'attemptPassword == savedPassword': is not true.
  print('After Assertion Trial');
}
