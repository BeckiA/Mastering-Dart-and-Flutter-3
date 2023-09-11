void main() {
  // Task 1: Create a function that takes in two integers and returns their sum
  int add(int a, int b) {
    return a + b;
  }

  print(add(1, 2));

  // Task 2: Create a function that takes in a string and returns its length
  int getStringLength(String str) {
    return str.length;
  }

  print(getStringLength("Bereket"));
  // Task 3: Create a function that takes in a list of integers and returns the sum of all even numbers in the list
  int sumOfEvens(List<int> numbers) {
    int sum = 0;
    for (var number in numbers) {
      if (number % 2 == 0) {
        sum += number;
      }
    }
    return sum;
  }

  print(sumOfEvens([1, 2, 3, 4, 5]));
  // Task 4: Create a function that takes in an integer and returns true if it's even and false otherwise
  bool isEven(int number) {
    bool isEven = number % 2 == 0 ? true : false;
    return isEven;
  }

  print(isEven(2));
  // Task 5: Create a function that takes in a list of strings and returns a new list with all strings in uppercase
  String convertToUppercase(List<String> strings) {
    late String newString;
    for (var string in strings) {
      newString = string.toUpperCase();
    }
    return newString;
  }

  print(convertToUppercase(['abera']));
  // Task 6: Create a function that takes in a list of integers and returns the highest number in the list
  int findHighest(List<int> numbers) {
    int highestInteger = 0;
    for (var number in numbers) {
      if (number >= number) {
        highestInteger = number;
      }
    }
    return highestInteger;
  }

  var numbers = [1, 2, 3, 4, 5, 10];
  print(findHighest(numbers));

  // Task 7: Create a function that takes in a string and returns true if the string contains the letter 'a', false otherwise
  bool containsLetterA(String str) {
    bool status = false;
    String string = str.toUpperCase();
    if (string.contains('A')) {
      status = true;
    }
    return status;
  }

  String myString = 'Yeabsra';
  var result = containsLetterA(myString);
  print(result);

  // Task 8: Create a function that takes in a list of integers and returns the product of all numbers in the list
  int getProduct(List<int> numbers) {
    int product = 1;
    for (var number in numbers) {
      product *= number;
    }
    return product;
  }

  print(getProduct([1, 2, 3, 4, 5]));

  // Task 9: Create a function that takes in an integer and returns true if it's a prime number, false otherwise
  bool isPrime(int number) {
    bool primeNumber = false;
    if (number <= 1) {
      print("$number isn't neither prime nor composite");
    }
    if (number == 2) {
      primeNumber = true;
    }
    if (number % 2 == 0) {
      primeNumber = false;
    } else {
      for (var i = 3; i * i <= number; i++) {
        if (number % i == 0) {
          primeNumber = false; // If divisible, it's not a prime number
        }
      }
    }

    return primeNumber;
  }

  print(isPrime(3));

  // Task 10: Create a function that takes in a list of integers and returns a new list with all odd numbers removed
  List<int> removeOdds(List<int> numbers) {
    List<int> oddRemoved = [];
    for (var number in numbers) {
      if (number % 2 != 0) {
        oddRemoved.add(number);
      }
    }
    return oddRemoved;
  }

  print(removeOdds([1, 2, 3, 4, 5]));
}
