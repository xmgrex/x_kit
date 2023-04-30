extension StringEx on String {
  num get toNum => num.parse(this);

  bool isEqual(String s) => this == s;

}
