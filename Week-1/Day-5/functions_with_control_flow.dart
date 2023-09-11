void main(List<String> args) {
  String status = score(grade: 100);
  print(status);

  var numbers = [1, 2, 3, 4, 5];
  int sum = sumList(numbers);
  print("The sum of numbers in the list is: $sum");

  var sumHundred = sum100(100);
  print('The sum of the first hundred numbers is: $sumHundred');
}

// IF Functions
// Returns "Perfect score" if score == 100,
//Returns "Pass" if score >= 60,
//Returns "Fail" if score < 60,

String score({required int grade}) {
  if (grade > 100 || grade < 0) {
    return "Incorect grade";
  }
  if (grade == 100) {
    return "Perfect score";
  } else if (grade > 60) {
    return "Pass";
  } else {
    return "Fail";
  }
}

// While Loop Functions
// Write a function that will accept a list of numbers and returns their sum
int sumList(List<int> numbers) {
  var number = 0;
  int sum = 0;
  while (number <= numbers.length) {
    sum += number;
    number++;
  }
  return sum;
}

// For loop functions
// Write a function that will print the sum of first hundred numbers using for loops
int sum100(int number) {
  int sum = 0;
  for (var i = 0; i <= number; i++) {
    sum += i;
  }
  return sum;
}
