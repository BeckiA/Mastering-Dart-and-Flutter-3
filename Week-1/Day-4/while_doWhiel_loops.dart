void main(List<String> args) {
  // Difference between WHILE AND DO_WHILE

  // 1 - While
  // var i = 1;
  // while (i < 5) {
  //   print(i);
  //   i++;
  // }

  // 2 - do while
  // Do While loop will almost excute the line once before even the condition is met!
  var i = 1;
  do {
    print("i is $i");
  } while (i < 0);
}
