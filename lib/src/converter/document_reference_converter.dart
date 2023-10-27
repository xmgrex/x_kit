part of 'converter.dart';

class DocumentReferenceField implements JsonConverter<DocumentReference, Object?> {
  const DocumentReferenceField();

  @override
  DocumentReference fromJson(Object? json) {
    if (json is DocumentReference) {
      return json;
    } else if (json is String) {
      return FirebaseFirestore.instance.doc(json);
    } else if (json == null) {
      return FirebaseFirestore.instance.doc('social/v1');
    } else {
      throw Exception('Invalid document reference format');
    }
  }

  @override
  Object toJson(DocumentReference object) => object;
}