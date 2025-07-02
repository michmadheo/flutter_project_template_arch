class NumberUtil {
  NumberUtil._();

  static bool isEven(double value) {
    bool result = false;
    if (value % 2 == 0) {
      result = true;
    }
    return result;
  }
}