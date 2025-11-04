class FormatUtils {
  FormatUtils._();

  /// Formatuje liczbę do skróconej formy (np. 1500 -> "1.5k")
  static String formatNumber(int number) {
    if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}k';
    }
    return number.toString();
  }
}
