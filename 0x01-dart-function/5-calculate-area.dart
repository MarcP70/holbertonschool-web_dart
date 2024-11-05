double calculateArea(double height, double base) {
  double area = (height * base) / 2;
  double areaRounded = (area * 100).round() / 100;
  return areaRounded;
}
