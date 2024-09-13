class PricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double shippingcost = getShippingCost(location);

    double totalPrice = productPrice + shippingcost;
    return totalPrice;
  }

  static String calculateShippingCost(double prouctPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static double getShippingCost(String location) {
    return 200.0;
  }
}
