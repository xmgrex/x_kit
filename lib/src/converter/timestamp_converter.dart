part of 'converter.dart';

class TimestampField implements JsonConverter<Timestamp, Object?> {
  const TimestampField();

  @override
  Timestamp fromJson(Object? json) {
    if (json is Timestamp) {
      return json;
    } else if (json is String) {
      return Timestamp.fromDate(DateTime.parse(json));
    } else if (json is int) {
      return Timestamp.fromMillisecondsSinceEpoch(json);
    } else {
      throw Exception('Invalid timestamp format');
    }
  }

  @override
  Object toJson(Timestamp object) => object;
}