void main(List<String> args) {
  var myList = ['a', 'b', 'c'];
  var mySets = {'x', 'y', 'z'};
  var myMaps = {'k': 0, 'l': 1, 'm': 2};

  // 1. Looping through Lists
  for (final letter in myList) {
    print(letter);
  }

  // 2. Looping through Sets
  for (final alphas in mySets) {
    print(alphas);
  }

  // 3. Looping through Maps
  //  Method - I
  for (final keys in myMaps.keys) {
    print(keys);
  }
  // Method -II: Using the for each Method
  myMaps.forEach((key, value) {
    print('The value for key $key is $value');
  });

  // 4. for loops based on iterations
  for (var i = 0; i < myList.length; i++) {
    print(i);
  }
}
