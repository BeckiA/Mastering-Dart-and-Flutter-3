void main(List<String> args) {
  // Null Saftey Operator
  // How it Works??
  // Example
  // +_+ The Code Below will print such an error saying
  //A value of type 'Null' can't be assigned to a variable of type 'int'.
  // int num = null;

  // Modifying the above code with the null saftey
  // 😎But this code still have an issue known as redundant initalization to null!
  int? num = null;

  // Making it easily flexible
  int? myNum;
  print(myNum); // This will print null
}
