List<double> convertToF(List<double> celsiusList) {
  return celsiusList.map((c) {
    double f = (c * 9 / 5) + 32;
    return double.parse(f.toStringAsFixed(2));
  }).toList();
}