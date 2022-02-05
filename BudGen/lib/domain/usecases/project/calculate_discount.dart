class CalculateDiscount {
  double call(double totalValue, double discount, bool isPercent) {
    double resultValue;

    if (discount <= 0 || totalValue <= 0)
      throw new ArgumentError('os valores tem que ser maior que 0.');

    if (isPercent) {
      resultValue = totalValue - (totalValue * (discount / 100));
    } else {
      resultValue = totalValue - discount;
    }

    return resultValue;
  }
}
