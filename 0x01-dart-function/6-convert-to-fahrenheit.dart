List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = temperaturesInC
      .map((temperatureInC) =>
          double.parse(((temperatureInC * (9 / 5)) + 32).toStringAsFixed(2)))
      .toList();
  return temperaturesInF;
}
