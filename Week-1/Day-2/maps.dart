void main(List<String> args) {
  // Maps in Dart
  var books = {
    'Mosses': "Torah",
    'David': 'Psalms',
    'Solomon': 'Proverbs',
    'Paul': 'Ephesians',
    'John': 'Relevation'
  };

  print(books);

  // Accessing elements using key's
  print(books['David']);

  // Trying to access element that don't exist
  print(books['Peter']); //This'll returns null

  //Adding Elements to Maps

  books['Luke'] = "Acts";
  print(books);
}
