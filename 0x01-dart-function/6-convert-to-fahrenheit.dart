List<double> convertToF(List<double> temperaturesInC) {
  return (temperaturesInC.map((e) => double.parse(((e * 9/5) + 32).toStringAsFixed(2)))).toList();
} 
