void main(List<String> args) {
  // 1. Working with Lists

  var myListNum = [1, 2, 3, 4, 5];
  var myListAlpha = ['A', 'B', 'C', 'D', 'E'];
  var myListMixed = [1, 2, 3, 4, 'A'];

  print(myListNum);
  print(myListAlpha);
  print(myListMixed);

  // 2. Working with Lists

  print(myListAlpha[3]); // Printing element that found under index 3
  print(myListAlpha.length);
  print(myListAlpha.sublist(0, 3));

  //  3. Working with lists concatenation

  print(myListAlpha + ['F', 'G', 'H', 'I']);

  // 4. Exceptions on dart
  print(myListNum[
      -1]); // Won't work Negative indexing is not applicable in Python[RANGE ERROR]
}
