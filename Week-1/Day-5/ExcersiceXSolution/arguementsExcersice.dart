void main(List<String> args) {
  // 1.Calculating area of a rectangle with arguements
  double rectangle_area = areaRectangle(width: 5, height: 10);
  print("The area of a rectangle is: $rectangle_area");

  // 2.Calculating area of a rectangle with missed arguements
  double area = areaRectangle();
  print("The area of a rectangle is: $area");
}

double areaRectangle({double width = 0, double height = 0}) {
  return height * width;
}
