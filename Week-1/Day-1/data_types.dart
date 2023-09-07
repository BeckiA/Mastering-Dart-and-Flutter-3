// Overview of data types in Dart

void main(List<String> args) {
  /*
  Difference between attributes and methods

  Attributes: Attributes mainly used to describe the general information that the variable  holds
  Method: Method used to return new or transformed property of a given String

  */
  // Examples
  var myName = "Bereket";
  print(myName);
  print(
      "Attribute: ${myName.length}"); //This Attribute describes the number of characters basically my name contains
  print("Method: ${myName.toUpperCase()}");
}
