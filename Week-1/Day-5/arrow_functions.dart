void main(List<String> args) {
  hello(String name) {
    print(name);
  }

  hello("Abebe");

  // Arrow Function with Print Statement
  helloName(name) => print(name);
  helloName("Bekalu");

  // Arrow Function with return only
  helloMe(name) => name;
  print(helloMe("Beba"));
}
