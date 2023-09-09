void main(List<String> args) {
  // ++ vs -- in Dart
  var alpha = 0;
  var beta = 0;
  // print(alpha);
  // print(beta);

  // 2. Printing them with increment
  // print(++alpha);
  // print(alpha++);

  // 3. Printing them with assignment then increment

  // In this case the incrementation happen before the assignment
  // beta = ++alpha;
  // print(beta);
  // print(alpha);

  // In this case the incrementaion happens after the assignment
  beta = alpha++;
  print(beta);
  print(alpha);
}
