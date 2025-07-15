void main() {
  List<int> prices = [7, 1, 5, 3, 6, 4];
  int result = maxProfit(prices);
  print('최대 이익: $result');
}

int maxProfit(List<int> prices) {
  int minPrice = prices.isEmpty ? 0 : prices[0];
  int maxProfit = 0;

  for (int price in prices) {
    if (price < minPrice) {
      minPrice = price;
    } else {
      maxProfit = (price - minPrice > maxProfit) ? price - minPrice : maxProfit;
    }
  }

  return maxProfit;
}
