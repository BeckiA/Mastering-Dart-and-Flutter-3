void main() {
  // Given the string below, replace all the
  // "x"s with a blank string
  var errorMessage = "Uxh oxh, thexre's a bunxch of txypos";

  // Solution
  var cleanMessage = errorMessage.replaceAll(RegExp('x'), '');
  print(cleanMessage);
}
