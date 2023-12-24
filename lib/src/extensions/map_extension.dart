part of extensions;

extension MapEx on Map {
  String prettyPrint() {
    var result = StringBuffer();
    forEach((key, value) {
      result.writeln('$key: $value');
    });
    return result.toString();
  }
}
