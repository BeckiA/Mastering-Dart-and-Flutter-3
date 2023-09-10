void main(List<String> args) {
  print("Main is an entry point in dart");

  // 2. Printing user defined functions
  myFunction();

  // Cont'd from #3
  bekisFunction();

  // Method-I: Printing a function with return keyword
  var myAddition = additionExample();
  print(myAddition);

// Method-II: Default Print
  print(additionExample());
}

// 1.Writing user defined function
myFunction() {
  print("Hello World");
}

// 3. Type Anottations for functions
// Basically all functions do have a dynamic anottaion.
// But we can specifically anotate a type for our function example:
void bekisFunction() {
  print("Voila");
}

// 4. Return keyword in functions

additionExample() {
  return 3 + 2;
}
